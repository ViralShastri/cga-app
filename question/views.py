import itertools
from django.shortcuts import redirect, render
from question.models import Question, Category, Job
from student.models import Student
from main.decorators import *
from django.http import JsonResponse
# Create your views here.


@authentication_check
@user_authentication(allowed_users=['admin'])
def dashboard(request):
    category_count = Category.objects.all().count()
    student_count = Student.objects.all().count()
    job_count = Job.objects.all().count()
    question_count = Question.objects.all().count()
    return render(request, 'admin/dashboard.html', {'category_count': category_count, 'student_count': student_count, 'job_count': job_count, 'question_count': question_count})


@authentication_check
@user_authentication(allowed_users=['admin'])
def category_add(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                category = Category(
                    CategoryName=request.POST['txtcatname'],
                    CategoryDescription=request.POST['txtdescription'],
                )
                category.save()
                return JsonResponse({"msg": "New Category Added"}, status=200)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)
    return render(request, 'admin/category-add.html')


@authentication_check
@user_authentication(allowed_users=['admin'])
def category_table(request):
    category_data = Category.objects.all()
    return render(request, 'admin/category-table.html', {'category_data': category_data})


@authentication_check
@user_authentication(allowed_users=['admin'])
def category_delete(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                category_id = request.POST['category_id']
                category = Category.objects.get(pk=category_id)
                category.delete()
                return JsonResponse({}, status=200)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)


@authentication_check
@user_authentication(allowed_users=['admin'])
def category_update(request, id):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                category = Category(
                    CategoryId=request.POST['txtcatid'],
                    CategoryName=request.POST['txtcatname'],
                    CategoryDescription=request.POST['txtdescription']
                )
                category.save()
                return JsonResponse({}, status=200)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)

    category_data = Category.objects.filter(pk=id)
    return render(request, 'admin/category-update.html', {'category_data': category_data})


@authentication_check
@user_authentication(allowed_users=['admin'])
def question_add(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                question = Question(
                    CategoryId_id=request.POST['dropdowncat'],
                    QuestionTitle=request.POST['txtque'],
                )
                question.save()
                return JsonResponse({"msg": "New Question Added"}, status=200)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)

    category_data = Category.objects.all()
    return render(request, 'admin/question-add.html', {'category_data': category_data})


@authentication_check
@user_authentication(allowed_users=['admin'])
def question_table(request):
    question_data = Question.objects.all()
    return render(request, 'admin/question-table.html', {'question_data': question_data})


@authentication_check
@user_authentication(allowed_users=['admin'])
def question_delete(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                question_id = request.POST['question_id']
                question = Question.objects.get(pk=question_id)
                question.delete()
                return JsonResponse({}, status=200)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)


@authentication_check
@user_authentication(allowed_users=['admin'])
def question_update(request, id):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                question = Question(
                    QuestionId=id,
                    CategoryId_id=request.POST['dropdowncat'],
                    QuestionTitle=request.POST['txtque'],
                )
                question.save()
                return JsonResponse({"msg": "Question Updated"}, status=200)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)

    question_data = Question.objects.filter(pk=id)
    category_data = Category.objects.all()
    return render(request, 'admin/question-update.html', {'question_data': question_data, 'category_data': category_data})


@authentication_check
@user_authentication(allowed_users=['admin'])
def job_add(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                job = Job(
                    JobTitle=request.POST['txtjob']
                )
                job.save()
                category_list = request.POST.getlist('dropdowncat')
                for category in category_list:
                    job.Categories.add(category)
                return JsonResponse({"msg": "New Job Added"}, status=200)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)

    category_data = Category.objects.all()
    return render(request, 'admin/job-add.html', {'category_data': category_data})


@authentication_check
@user_authentication(allowed_users=['admin'])
def job_table(request):
    job_data = Job.objects.all()
    return render(request, 'admin/job-table.html', {'job_data': job_data})


@authentication_check
@user_authentication(allowed_users=['admin'])
def job_delete(request):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                job_id = request.POST['job_id']
                job = Job.objects.get(pk=job_id)
                job.delete()
                return JsonResponse({}, status=200)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)


@authentication_check
@user_authentication(allowed_users=['admin'])
def job_update(request, id):
    if request.is_ajax():
        if request.method == 'POST':
            try:
                job = Job(
                    JobId=id,
                    JobTitle=request.POST['txtjob'],
                )
                for jobCat in job.Categories.all():
                    job.Categories.remove(jobCat)
                job.save()
                category_list = request.POST.getlist('dropdowncat')
                for category in category_list:
                    job.Categories.add(category)
                return JsonResponse({"msg": "Job Updated"}, status=200)
            except:
                return JsonResponse({'error': 'Sorry, We Couldn\'t complete your request! Plesae Try Again Later!'}, status=500)

    job_cat = Job.objects.get(pk=id).Categories.all()
    job_cat = list(
        job.CategoryName for job in job_cat)
    category_data = Category.objects.all()
    job_data = Job.objects.filter(pk=id)
    # data = zip(category_data, job_cat)
    return render(request, 'admin/job-update.html', {'job_data': job_data, 'category_data': category_data, "job_cat": job_cat})
