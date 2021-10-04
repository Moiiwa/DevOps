from django.http import HttpResponse
from django.template import loader
from django.shortcuts import render
from django.http import HttpResponse
import datetime



def index(request):
    file_writer = open('/app_python/data/time.csv', 'w')
    file_writer.write(f'''{datetime.datetime.now()}''')
    print(datetime.datetime.now())
    return render(request, '../templates/index.html')

def visits(request):
    with open('/app_python/data/time.csv') as f:
        count = f.read()
    print(count)
    return HttpResponse(count)

def test_endpoint(request):
    return render(request, '../templates/index.html')