"""djangowebapp URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from rest_framework.authtoken.views import ObtainAuthToken
from api.views import UserSignupView,UserLoginView,PostView,LikeViewSet,like_unlike_post,delete_post
from rest_framework.routers import DefaultRouter

router=DefaultRouter()


router.register("signup",UserSignupView,basename="signup")
router.register("signin",UserLoginView,basename="signin")
router.register("post",PostView,basename="post")
router.register("like",LikeViewSet,basename="like")

urlpatterns = [
    path('admin/', admin.site.urls),
    path('token/', ObtainAuthToken.as_view()),
    path('post/<int:id>/like/',like_unlike_post, name='like-unlike-post'),
    path('post/<int:id>/delete/',delete_post,name='delete-post'),
    
]+router.urls

