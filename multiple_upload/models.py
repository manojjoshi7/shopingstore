from django.db import models
#from upload_validator import FileTypeValidator
from django.core.exceptions import ValidationError

def validate_file(value):
         value= str(value)
         if value.endswith(".jpeg") != True and value.endswith(".jpg") != True and value.endswith(".png") != True: 
            raise ValidationError("Only JPEG/PNG/JPG Fiels can be uploaded")
         else:
            return value

class MultipleImage(models.Model):
    images =models.FileField(upload_to='media',null=True,blank=True,help_text="Only image formats are accepted.",validators=[validate_file])
    
    def __str__(self):
         return str(self.images)

