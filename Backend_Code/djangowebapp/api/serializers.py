
from rest_framework import serializers
from .models import MyUser,Post,Like

class UserSignupSerializer(serializers.ModelSerializer):
    class Meta:
        model = MyUser
        fields = ('id', 'name', 'email', 'mobile', 'username', 'password')
        extra_kwargs = {
            'password': {'write_only': True},
        }

    def create(self,validated_data):
        user = MyUser.objects.create_user(**validated_data)
        return user


class PostSerializer(serializers.ModelSerializer):
    created_date=serializers.DateTimeField(format="%d-%m-%Y", read_only=True)
    class Meta:
        model = Post
        fields = ('id', 'title', 'description', 'user', 'tags', 'created_date')  
     
class LikeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Like
        fields = '__all__'        