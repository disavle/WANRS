import random

from django_filters import FilterSet
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import generics
from . import serializer
from .models import Card

class OneCard(generics.RetrieveAPIView):
    queryset = Card.objects.all()
    serializer_class = serializer.CardSerializer

class CardList(generics.ListAPIView):
    queryset = Card.objects.all()
    serializer_class = serializer.CardSerializer
    filter_backends = [DjangoFilterBackend]
    filterset_fields = {
            'type': ['in','exact'],
        }

class RandomCard(generics.ListAPIView):
    def get_queryset(self):
        return Card.objects.all().filter(id=random.randrange(1, Card.objects.all().count() + 1))
    serializer_class = serializer.CardSerializer

