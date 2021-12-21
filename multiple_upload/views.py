from django.shortcuts import render
from .models import MultipleImage
from PIL import Image
from django.contrib import messages

def upload(request):
    if request.method == "POST":
        images = request.FILES.getlist('images')
        fileList=[]
        for image in images:
            value= str(image)
            if value.endswith(".jpeg") != True and value.endswith(".jpg") != True and value.endswith(".png") != True:
                  fileList.append(image)
            else:                
                createImg=MultipleImage.objects.create(images=image)
                createthumbnill(createImg)
        
        if len(fileList)>0:
              fileList=', '.join([str(item) for item in fileList])
              messages.error(request, fileList+' not uploded. Only JPEG/PNG/JPG Fiels can be uploaded.')

    images = MultipleImage.objects.all()
    thumbimages=list()
    for x in images:
       x=str(x)
       x=x.replace('media/','media/thumb/')
       imglist={}
       imglist['img']='/' + x 
       imglist['name']='manoj'
       thumbimages.append(imglist)
    return render(request, 'multiple_image/index.html', {'images': thumbimages})

def createthumbnill(path):
    path=str(path)
    pathArray=path.split('/')
    lastIndex=(len(pathArray)-1)
    imgName=pathArray[lastIndex]
    image = Image.open(path)
    image.thumbnail((250, 150))
    image.save('media/thumb/'+imgName)
# Create your views here.
