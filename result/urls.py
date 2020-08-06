from django.urls import path
from . import views

urlpatterns = [
    path('result/', views.result_page, name='result-page'),
    path('admin/result/', views.student_result, name='student-result'),
]
