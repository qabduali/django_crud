from django import forms
from .models import Diseasetype

class DiseaseForm( forms.ModelForm ):

    class Meta:
        model = Diseasetype
        fields = '__all__'  