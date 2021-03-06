# Generated by Django 3.0.5 on 2020-07-24 06:29

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('question', '0001_initial'),
        ('student', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Result',
            fields=[
                ('ResultId', models.AutoField(primary_key=True, serialize=False)),
                ('AllCategories', models.CharField(max_length=250, null=True)),
                ('AllCategoriesScore', models.CharField(max_length=250, null=True)),
                ('ResultDate', models.DateTimeField(blank=True, default=datetime.datetime(2020, 7, 24, 11, 59, 6, 70703))),
                ('Categories', models.ManyToManyField(to='question.Category')),
                ('StudentId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='student.Student')),
            ],
        ),
    ]
