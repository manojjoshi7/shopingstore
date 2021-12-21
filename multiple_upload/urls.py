from django.contrib import admin
from django.urls import path
from . import views
urlpatterns = [
    path('multipleimg/', views.upload, name='upload')
]