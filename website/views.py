from django.shortcuts import redirect,render
from django.contrib.auth import login,logout,authenticate
from django.conf import settings
from django.contrib import messages
from PIL import Image
from .forms import *
from django.forms import ValidationError
import requests 
def home(request):
    products = Product.objects.all()
    context = {
        'products':products
    }
    return render(request,'website/home.html',context)

def createthumbnill(path):
    path=str(path)
    pathArray=path.split('/')
    lastIndex=(len(pathArray)-1)
    imgName=pathArray[lastIndex]
    image = Image.open(path)
    image.thumbnail((250, 250))
    image.save('static/productimg/thumb/'+imgName)
      
def placeOrder(request,i):
    customer= Customer.objects.get(id=i)
    form=createorderform(instance=customer)
    if(request.method=='POST'):
        form=createorderform(request.POST,instance=customer)
        if(form.is_valid()):
            form.save()
            return redirect('/')
    context={'form':form}
    return render(request,'website/placeOrder.html',context)

def addProduct(request):
    form=createproductform()
    if(request.method=='POST'):
        form=createproductform(request.POST,request.FILES)
        url = 'https://www.google.com/recaptcha/api/siteverify'
        data = {
                  'secret': settings.RECAPTCHA_PRIVATE_KEY,
                  'response': request.POST.get('g-recaptcha-response')
                 }
        r=requests.post(url,data=data)
        result = r.json() 
            
        if result['success']:
            if(form.is_valid()):
                 form.save()
                 img_obj = form.instance
                 createthumbnill(img_obj)
                 return redirect('/')
        else:
           messages.error(request, 'Google captcha is not valid.') 
                    
    context={'form':form,'recaptcha_public_key':settings.RECAPTCHA_PUBLIC_KEY}
    return render(request,'website/addProduct.html',context)    

def registerPage(request):
    
    if request.user.is_authenticated:
        return redirect('home') 
    else: 
        form=createuserform()
        customerform=createcustomerform()
        if request.method=='POST':
            form=createuserform(request.POST)
            customerform=createcustomerform(request.POST)
            url = 'https://www.google.com/recaptcha/api/siteverify'
            data = {
                  'secret': settings.RECAPTCHA_PRIVATE_KEY,
                  'response': request.POST.get('g-recaptcha-response')
                 }
            r=requests.post(url,data=data)
            result = r.json() 
            print(result)   
            if result['success']: 
                if form.is_valid() and customerform.is_valid():
                    user=form.save()
                    customer=customerform.save(commit=False)
                    customer.user=user 
                    customer.save()
                    return redirect('login')
            else:
                messages.error(request, 'Google captcha is not valid.')

        context={
                'form':form,
                'customerform':customerform,
                'recaptcha_public_key':settings.RECAPTCHA_PUBLIC_KEY
              }
        
        return render(request,'website/register.html',context)

def loginPage(request):
    if request.user.is_authenticated:
        return redirect('home')
    else:
       if request.method=="POST":
           username=request.POST.get('username')
           password=request.POST.get('password')
        
           url = 'https://www.google.com/recaptcha/api/siteverify'
           data = {
                  'secret': settings.RECAPTCHA_PRIVATE_KEY,
                  'response': request.POST.get('g-recaptcha-response')
                 }
           r=requests.post(url,data=data)
           result = r.json()
           print(result)
           if result['success']:
               user=authenticate(request,username=username,password=password)
               if user is not None:
                  login(request,user)
                  return redirect('/')
               else:
                  messages.error(request, 'Enter valid user name and password.')          
           else:
              messages.error(request, 'Google captcha is not valid.')
                          
       context={'recaptcha_public_key':settings.RECAPTCHA_PUBLIC_KEY}
       return render(request,'website/login.html',context)

def logoutPage(request):
    logout(request)
    return redirect('/')       

