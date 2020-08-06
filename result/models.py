from django.db import models
from datetime import datetime 
from question.models import *
from student.models import *
# Create your models here.


class Result(models.Model):
    ResultId = models.AutoField(primary_key=True)
    AllCategories = models.CharField(null=True, max_length=250)
    AllCategoriesScore = models.CharField(null=True, max_length=250)
    Categories = models.ManyToManyField(Category)
    StudentId = models.ForeignKey(Student, on_delete=models.CASCADE)
    ResultDate = models.DateTimeField(default=datetime.now(), blank=True)