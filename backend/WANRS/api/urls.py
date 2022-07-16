from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from . import views

urlpatterns = [
    path('cards/', views.CardList.as_view()),
    path('cards/<int:pk>/', views.OneCard.as_view()),
    path('cards/random/', views.RandomCard.as_view()),
]

urlpatterns = format_suffix_patterns(urlpatterns)
