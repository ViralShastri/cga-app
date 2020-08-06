from django.db import models

# Create your models here.


class Category(models.Model):
    CategoryId = models.AutoField(primary_key=True)
    CategoryName = models.TextField(null=False)
    CategoryDescription = models.TextField(null=False)


class Question(models.Model):
    QuestionId = models.AutoField(primary_key=True)
    QuestionTitle = models.TextField(null=False)
    CategoryId = models.ForeignKey(Category, on_delete=models.CASCADE)


class Job(models.Model):
    JobId = models.AutoField(primary_key=True)
    JobTitle = models.TextField(null=False)
    Categories = models.ManyToManyField(Category)
