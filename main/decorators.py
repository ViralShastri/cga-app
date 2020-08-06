from django.http import HttpResponse
from django.shortcuts import redirect
from django.contrib.auth.models import User, Group
from django.urls import reverse
from django.contrib import messages


def unauthenticated_user(view_func):
    def wrapper_func(request, *args, **kwargs):
        if request.user.is_authenticated:
            groups = request.user.groups.all()
            for group in groups:
                if "admin" in group.name:
                    return redirect('/admin/')
                else:
                    return redirect('landing-page')
        else:
            return view_func(request, *args, **kwargs)
    return wrapper_func


def authentication_check(view_func):
    def wrapper_func(request, *args, **kwargs):
        if request.user.is_authenticated:
            return view_func(request, *args, **kwargs)
        else:
            messages.warning(request, "Please Login to continue")
            return redirect("login-page")
    return wrapper_func


def user_authentication(allowed_users=[]):
    def decorator(view_func):
        def wrapper_func(request, *args, **kwargs):
            groups = []
            if request.user.groups.exists():
                groups = request.user.groups.all()
                for group in groups:
                    if group.name in allowed_users:
                        return view_func(request, *args, **kwargs)
                    else:
                        if "admin" in group.name:
                            return redirect("/admin/")
                return redirect("landing-page")
            return view_func(request, *args, **kwargs)
        return wrapper_func
    return decorator
