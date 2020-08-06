from django.urls import path
from . import views

urlpatterns = [
    path('admin/job-add/', views.job_add, name='job-add'),
    path('admin/job-table/', views.job_table, name='job-table'),
    path('admin/job-del/', views.job_delete, name='job-del'),
    path('admin/job-updt/<int:id>/', views.job_update, name='job-updt'),
    path('admin/cat-add/', views.category_add, name='cat-add'),
    path('admin/cat-table/', views.category_table, name='cat-table'),
    path('admin/cat-del/', views.category_delete, name='cat-del'),
    path('admin/cat-updt/<int:id>/', views.category_update, name='cat-updt'),
    path('admin/que-add/', views.question_add, name='que-add'),
    path('admin/que-table/', views.question_table, name='que-table'),
    path('admin/que-del/', views.question_delete, name='que-del'),
    path('admin/que-updt/<int:id>/', views.question_update, name='que-updt'),
    path('', views.dashboard, name='dashboard'),
]
