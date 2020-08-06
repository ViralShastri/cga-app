from django.db import models
from django.contrib.auth.models import User

# Create your models here.


class Student(models.Model):
    UserId = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    StudentId = models.AutoField(primary_key=True)
    Name = models.CharField(max_length=150)
    Phone = models.CharField(max_length=150, null=True)
    City = models.CharField(max_length=150)
    District = models.CharField(max_length=150)
    Pincode = models.CharField(max_length=150)
    Qualification = models.CharField(max_length=150)
