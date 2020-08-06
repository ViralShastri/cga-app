from django.contrib import admin
from django.urls import path
from django.conf.urls import include

urlpatterns = [
    path('', include('main.urls')),
    path('', include('question.urls')),
    path('', include('result.urls')),
    path('', include('student.urls')),
    path('superadmin/', admin.site.urls),
]
