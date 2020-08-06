from django.shortcuts import render
from student.models import Student
from result.models import Result
from question.models import Job, Category
from main.decorators import *
# Create your views here.


@authentication_check
@user_authentication(allowed_users=['user'])
def result_page(request):
    return render(request, 'client/result-page.html')


@authentication_check
@user_authentication(allowed_users=['admin'])
def student_result(request):
    student_data = Result.objects.all()
    job_data = Job.objects.all()
    job_cat = list(
        list(result.CategoryId for result in result.Categories.all())
        for result in student_data
    )
    result_cat = []
    for result in student_data:
        allCat = result.AllCategories.split(",")
        for idx, item in enumerate(allCat):
            category = Category.objects.get(pk=item)
            allCat[idx] = category.CategoryName
        allCatScore = result.AllCategoriesScore.split(",")
        obj = {}
        for cat, catScore in zip(allCat, allCatScore):
            obj[cat] = catScore
        result_cat.append(obj)
    data = zip(student_data, job_cat, result_cat)
    data2 = result_cat[0]
    return render(request, 'admin/student-result.html',  {'data': data, 'data2': data2, "job_data": job_data})
