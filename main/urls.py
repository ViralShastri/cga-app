from django.urls import include, path
from django.contrib.auth import views as auth_views
from django.contrib import admin
from . import views

urlpatterns = [
    path('report_view/', views.report, name="report_view"),
    path('questions/', views.home, name='home'),
    path('admin/', include('question.urls')),
    path('logout/', views.logoutView, name='logout'),
    path('register/', views.register_page, name='register-page'),
    path('login/', views.login_page, name='login-page'),
    path('', views.landing_page, name='landing-page'),
    path('checkemail/', views.email_check, name='email-check'),
    path(
        'reset_password/',
        auth_views.PasswordResetView.as_view(
            template_name="client/password_reset.html"),
        name="reset_password"
    ),

    path(
        'reset_password_sent/',
        auth_views.PasswordResetDoneView.as_view(
            template_name="client/password_reset_sent.html"),
        name="password_reset_done"
    ),

    path(
        'reset/<uidb64>/<token>/',
        auth_views.PasswordResetConfirmView.as_view(
            template_name="client/password_reset_form.html"),
        name="password_reset_confirm"
    ),

    path(
        'reset_password_complete/',
        auth_views.PasswordResetCompleteView.as_view(
            template_name="client/password_reset_done.html"),
        name="password_reset_complete"
    ),
]
