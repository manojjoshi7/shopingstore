from django import forms
from django.forms import fields
from crudexample.models import Employee
from captcha.fields import ReCaptchaField
from captcha.widgets import ReCaptchaV2Checkbox


class EmployeeFrom(forms.ModelForm):
    class Meta:
        model=Employee
        captcha = ReCaptchaField(widget=ReCaptchaV2Checkbox)
        fields="__all__"