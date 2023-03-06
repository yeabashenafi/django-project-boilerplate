from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

class ExtendedUser(AbstractUser):

    phone = models.CharField(max_length=25)
    email = models.EmailField(max_length=255,verbose_name='email')
    email_verified = models.BooleanField(default=False)
    is_verified = models.BooleanField(default=False)