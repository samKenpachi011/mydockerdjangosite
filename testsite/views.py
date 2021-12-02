from django.shortcuts import render
from django.http import HttpResponse, request
# Create your views here.

#hello
def hello(requet):
    return HttpResponse("Dockerfied by ken")