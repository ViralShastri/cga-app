from django.shortcuts import render
from student.models import Student
from main.decorators import *

# Create your views here.
@authentication_check
@user_authentication(allowed_users=['admin'])
def student_table(request):
    student_data = Student.objects.all()
    return render(request, 'admin/student-table.html', {'student_data': student_data})
