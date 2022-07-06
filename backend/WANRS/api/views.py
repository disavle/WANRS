from rest_framework import generics
from . import serializer
from django.contrib.auth.models import User
from .models import Post


class UserList(generics.ListAPIView):
    queryset = User.objects.all()
    serializer_class = serializer.UserSerializer


class UserDetail(generics.RetrieveAPIView):
    queryset = User.objects.all()
    serializer_class = serializer.UserSerializer

class PostList(generics.ListCreateAPIView):
    queryset = Post.objects.all()
    serializer_class = serializer.PostSerializer

    def perform_create(self, serializer):
        serializer.save(owner=self.request.user)


class PostDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Post.objects.all()
    serializer_class = serializer.PostSerializer
