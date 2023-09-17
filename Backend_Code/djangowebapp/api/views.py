
from .serializers import UserSignupSerializer,PostSerializer,LikeSerializer
from .models import MyUser,Post,Like
from rest_framework.viewsets import ModelViewSet,ViewSet
from django.contrib.auth import authenticate, login
from rest_framework.response import Response
from rest_framework import status
from rest_framework.authtoken.models import Token
from rest_framework.decorators import api_view


class UserSignupView(ModelViewSet):
    serializer_class = UserSignupSerializer
    queryset = MyUser.objects.all()


class UserLoginView(ModelViewSet):
    queryset = MyUser.objects.all()

    def create(self, request, *args, **kwargs):
        username = request.data.get('username')
        password = request.data.get('password')

        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            token, created = Token.objects.get_or_create(user=user)
            return Response({"Login Successfull"})
        else:
            return Response({'error': 'Invalid credentials'}, status=status.HTTP_401_UNAUTHORIZED)



# class PostView(ModelViewSet):
#     serializer_class = PostSerializer
#     queryset = Post.objects.all()
    
class PostView(ViewSet):
    def list(self,request,*args,**kwargs):
         ps=Post.objects.all()
         serializer=PostSerializer(ps,many=True)
         return Response(data=serializer.data)

    def create(self,request,*args,**kwargs):
        serializer=PostSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(data=serializer.data)
        else:
             return Response(data=serializer.errors)


@api_view(['POST'])
def delete_post(request,**kwargs):
    try:
        id=kwargs.get("id")
        post = Post.objects.get(id=id)
    except Post.DoesNotExist:
        return Response({"error": "Post not found"}, status=status.HTTP_404_NOT_FOUND)

    if post.user != request.user:
        return Response({"error": "You don't have permission to delete this post"}, status=status.HTTP_403_FORBIDDEN)
    else:
        post.delete()
    return Response({"message": "Post deleted successfully"}, status=status.HTTP_204_NO_CONTENT)


# class LikeViewSet(ModelViewSet):
#     queryset = Like.objects.all()
#     serializer_class = LikeSerializer

class LikeViewSet(ViewSet):
    def list(self,request,*args,**kwargs):
         ls=Like.objects.all()
         serializer=LikeSerializer(ls,many=True)
         return Response(data=serializer.data)


@api_view(['POST'])
def like_unlike_post(request, id):
    try:
        post = Post.objects.get(id=id)
    except Post.DoesNotExist:
        return Response({"error": "Post not found"}, status=status.HTTP_404_NOT_FOUND)
    
    user = request.user

    try:
        like = Like.objects.get(user=user, post=post)
        like.delete() 
        return Response({"message": "Post unliked successfully"}, status=status.HTTP_200_OK)
    except Like.DoesNotExist:
        Like.objects.create(user=user, post=post)
        return Response({"message": "Post liked successfully"}, status=status.HTTP_201_CREATED)

