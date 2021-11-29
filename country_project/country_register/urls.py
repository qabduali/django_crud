from django.urls import path, include
from . import views

urlpatterns = [
    path('', views.disease_form, name='disease_insert' ),
    path('<int:id>/', views.disease_form, name='disease_update'),
    path('delete/<int:id>/', views.disease_delete, name='disease_delete'),
    path('list/', views.disease_list, name='disease_list' )
]