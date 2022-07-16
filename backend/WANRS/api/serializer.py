from rest_framework import serializers
from .models import Card


class CardSerializer(serializers.ModelSerializer):
    type = serializers.StringRelatedField(many=False)
    class Meta:
        model = Card
        fields = ['id', 'text', 'type']