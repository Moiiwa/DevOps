from django.http import HttpResponse
from django.template import loader
from django.shortcuts import render



def index(request):
    return render(request, '../templates/index.html')

def test_endpoint(request):
    return render(request, '../templates/index.html')