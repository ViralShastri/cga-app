from django.urls import path
from . import views

urlpatterns = [
    path('admin/student-table/', views.student_table, name='student-table'),   
]