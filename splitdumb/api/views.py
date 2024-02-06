from django.shortcuts import render
from django.http import HttpResponse
from .auth import check_auth

@check_auth
def gay(req):
    return HttpResponse("gay")