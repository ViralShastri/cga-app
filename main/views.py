from django.shortcuts import redirect, render
from question.models import Question, Job, Category
from student.models import Student
from result.models import Result
from django.http import JsonResponse
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from main.decorators import *
import datetime
import json
# Create your views here.


@authentication_check
@user_authentication(allowed_users=['user'])
def home(request):
    if request.is_ajax():
        if request.method == 'POST':
            user_id = request.user.id
            student = Student.objects.get(UserId_id=user_id)
            try:
                result = Result(
                    StudentId_id=student.StudentId,
                    AllCategories=request.POST['allCat'],
                    AllCategoriesScore=request.POST['allScore']
                )
                result.save()
                category_list = request.POST['catList'].split(',')
                for category in category_list:
                    result.Categories.add(category)
                return JsonResponse({}, status=200)
            except:
                return JsonResponse({'error': request}, status=500)
    question_data = Question.objects.all()
    return render(request, 'client/questions.html', {'question_data': question_data})


@user_authentication(allowed_users=['user'])
def landing_page(request):
    questions = Question.objects.all().count()
    return render(request, 'client/landing-page.html', {"questions": questions})


@unauthenticated_user
def login_page(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                username = request.POST['email']
                password = request.POST['password']
                user = authenticate(
                    request, username=username, password=password)
                if user is not None:
                    groups = user.groups.all()
                    for group in groups:
                        if "admin" in group.name:
                            login(request, user)
                            return JsonResponse({"admin": True}, status=200)
                        else:
                            login(request, user)
                            return JsonResponse({}, status=200)
                else:
                    return JsonResponse({'error': 'Invalid Credentials - Please Check Your Username Or Password'}, status=401)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)

    return render(request, 'client/login-page.html')


@authentication_check
def logoutView(request):
    groups = request.user.groups.all()
    logout(request)
    for group in groups:
        if "user" in group.name:
            return redirect('landing-page')
        else:
            return redirect('login-page')
    return redirect("login-page")


@unauthenticated_user
def register_page(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                User.objects.get(email=request.POST['email'])
                return JsonResponse({'error': 'Sorry, Email is Already Registerd'}, status=422)
            except:
                try:
                    user = User.objects.create_user(
                        request.POST['email'], request.POST['email'], request.POST['password'])
                    name = request.POST['fullname'].split()
                    if len(name) > 1:
                        user.first_name = name[0]
                        user.last_name = " ".join(name[1:])
                    else:
                        user.first_name = " ".join(name)
                    group = Group.objects.get(name="user")
                    user.groups.add(group)
                    student = Student(
                        UserId_id=user.id,
                        Name=request.POST['fullname'],
                        City=request.POST['city'],
                        District=request.POST['district'],
                        Pincode=request.POST['pincode'],
                        Qualification=request.POST['qualification'],
                        Phone=request.POST['number']
                    )
                    user.save()
                    student.save()
                    return JsonResponse({}, status=200)
                except:
                    return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)

    return render(request, 'client/register-page.html')


def email_check(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                User.objects.get(email=request.POST['email'])
                return JsonResponse({}, status=200)
            except:
                return JsonResponse({'error': 'Invalid Email Address'}, status=422)


@authentication_check
@user_authentication(allowed_users=['user'])
def report(request):
    userId = request.user.id
    student = Student.objects.get(UserId_id=userId)
    result = Result.objects.filter(
        StudentId_id=student.StudentId).order_by("-ResultId")[0]
    result_data = result.Categories.all().order_by('result_result_Categories.id')
    allCat2 = result.AllCategories.split(",")
    allCat = []
    for cat in allCat2:
        category = Category.objects.get(pk=cat)
        allCat.append(category.CategoryName)
    allCatScore = result.AllCategoriesScore
    job = Job.objects.all()
    result_cat = Result.objects.get(pk=result.ResultId).Categories.all()
    result_cat = list(
        result.CategoryId for result in result_cat)
    return render(request, 'client/report.html', {'result': result, "result_data": result_data, 'job_data': job, 'result_cat': result_cat, "allCat": allCat, "allCatScore": allCatScore})
