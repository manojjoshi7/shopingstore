from django.shortcuts import redirect, render
from crudexample.forms import EmployeeFrom
from crudexample.models import Employee
from django.http import JsonResponse
from django.contrib import messages
from django.conf import settings
import requests 
def emp(request):
    if request.method=='POST':
        form=EmployeeFrom(request.POST or None)
        url = 'https://www.google.com/recaptcha/api/siteverify'
        data = {
                  'secret': settings.RECAPTCHA_PRIVATE_KEY,
                  'response': request.POST.get('g-recaptcha-response')
                 }
        r=requests.post(url,data=data)
        result = r.json()
        print(result)
        if result['success']:
            if(form.is_valid()):
                try:
                    form.save()
                    messages.success(request, 'Employee information has been add.')
                    return JsonResponse({'message':'Employee information has been add.','status':'true'})
                except:
                    return JsonResponse({'message':form.errors,'status':'false'})
            else:
                return JsonResponse({'message':form.errors,'status':'false'})
            #return render(request,'crudexample/index.html',{'form':form,'errors':form.errors})                
        else:
            messages.error(request, 'Google captcha is not valid.')
    else:
        form=EmployeeFrom()
        return render(request,'crudexample/index.html',{'form':form,'errors':form.errors,'recaptcha_public_key':settings.RECAPTCHA_PUBLIC_KEY})                

def show(request):
    employees=Employee.objects.all()
    return render(request,'crudexample/show.html',{'employees':employees})

def edit(request,id):
    employee=Employee.objects.get(id=id)
    print('======>>'+settings.RECAPTCHA_PUBLIC_KEY)
    return render(request,'crudexample/edit.html',{'employee':employee,'recaptcha_public_key':settings.RECAPTCHA_PUBLIC_KEY})

def update(request,id):
    employee=Employee.objects.get(id=id)
    form=EmployeeFrom(request.POST or None,instance=employee)
    if(form.is_valid()):
        messages.success(request, 'Employee information has been updated.')
        form.save()
        return redirect("/employee/show")
    return render(request,'crudexample/edit.html',{'employee':employee,'form':form}) 

def destroy(request):
    if request.method=='POST':
        empid=request.POST.get('empid')
        if empid and empid.strip():
            employee=Employee.objects.get(id=empid)
            if employee.delete():
               messages.success(request, 'Employee has been deleted.')
            else:
               messages.error(request, 'Error has occurred.')      
    return redirect("/employee/show")    