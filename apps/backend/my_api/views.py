from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework import status
from .models import ExampleModel
from .serializers import ExampleModelSerializer

class ExampleModelViewSet(viewsets.ViewSet):
    def list(self, request):
        queryset = ExampleModel.objects.all()
        serializer = ExampleModelSerializer(queryset, many=True)
        return Response(serializer.data)

    def create(self, request):
        serializer = ExampleModelSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def retrieve(self, request, pk=None):
        try:
            example_model = ExampleModel.objects.get(pk=pk)
        except ExampleModel.DoesNotExist:
            return Response(status=status.HTTP_404_NOT_FOUND)
        serializer = ExampleModelSerializer(example_model)
        return Response(serializer.data)

    def update(self, request, pk=None):
        try:
            example_model = ExampleModel.objects.get(pk=pk)
        except ExampleModel.DoesNotExist:
            return Response(status=status.HTTP_404_NOT_FOUND)
        serializer = ExampleModelSerializer(example_model, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def destroy(self, request, pk=None):
        try:
            example_model = ExampleModel.objects.get(pk=pk)
        except ExampleModel.DoesNotExist:
            return Response(status=status.HTTP_404_NOT_FOUND)
        example_model.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
