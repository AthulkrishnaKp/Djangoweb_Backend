from django.db import models

# Create your models here.
from django.core.exceptions import ValidationError
from django.contrib.auth.models import AbstractUser
from django.db import models
from django.core.validators import RegexValidator
 
class MyUser(AbstractUser):
    mobile_regex = RegexValidator(
        regex=r'^\+?1?\d{9,15}$',
        message="Phone number must be entered in the format: '+999999999'. Up to 15 digits allowed."
    )

    mobile = models.CharField(validators=[mobile_regex], max_length=17, blank=True, unique=True)
    name=models.CharField(max_length=200)
    email=models.EmailField(unique=True)

    def is_password_strong(password):
        if len(password) < 8:
            raise ValidationError("Password must be at least 8 characters long.")
    

class Post(models.Model):
    user=models.ForeignKey(MyUser,on_delete=models.CASCADE,auto_created=True)
    title = models.CharField(max_length=255)
    description = models.TextField()
    tags = models.ManyToManyField(MyUser,related_name='tagged_users',blank=True)
    created_date = models.DateTimeField(auto_now_add=True)
    

class Like(models.Model):
    user = models.ForeignKey(MyUser, on_delete=models.CASCADE)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)    
    
