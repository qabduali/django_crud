from django.shortcuts import render, redirect 
from .forms import DiseaseForm
from .models import Diseasetype
from django.shortcuts import get_object_or_404

# Create your views here.
def disease_list( request ):
    disease_list = Diseasetype.objects.all()
    context = {'disease_list':disease_list}
    return render( request, "country_register/disease_list.html", context)

def disease_form( request, id=0 ):
    if request.method == "GET":
        if id == 0:
            form = DiseaseForm()
        else:
            disease = Diseasetype.objects.get(pk = id)
            form = DiseaseForm( instance=disease )
        return render( request, "country_register/disease_form.html", {'form':form})
    else: 
        if id == 0:
            form = DiseaseForm( request.POST )
        else: 
            disease = Diseasetype.objects.get(pk = id)
            form = DiseaseForm(request.POST, instance=disease)
        if form.is_valid():
            form.save()
        return redirect('/disease/list')

def disease_delete( request, id ):
    disease = Diseasetype.objects.get(pk = id)
    disease.delete()
    return redirect('/disease/list')