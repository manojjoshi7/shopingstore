from django.db import models
from django.core.exceptions import ValidationError

# creating a validator function
def validate_geeks_mail(value):
    if "@gmail.com" in value:
        return value
    else:
        raise ValidationError("This field accepts mail id of google only")

class Employee(models.Model):
    eid=models.CharField(max_length=20,blank = False)
    ename=models.CharField(max_length=200,blank = False)
    email=models.EmailField(blank = False,validators =[validate_geeks_mail])
    econtact=models.CharField(max_length=50,blank = False)
    class Meta:
          db_table='employee'



