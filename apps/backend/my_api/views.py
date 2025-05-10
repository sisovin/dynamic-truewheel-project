from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import action
from rest_framework.permissions import IsAuthenticated
from django.db.models import Q
from .models import ExampleModel, Vehicle, User, Dealer, Testimonial
from .serializers import ExampleModelSerializer, VehicleSerializer, UserSerializer, DealerSerializer, TestimonialSerializer

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

class VehicleViewSet(viewsets.ModelViewSet):
    queryset = Vehicle.objects.all()
    serializer_class = VehicleSerializer

class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer

class DealerViewSet(viewsets.ModelViewSet):
    queryset = Dealer.objects.all()
    serializer_class = DealerSerializer

class TestimonialViewSet(viewsets.ModelViewSet):
    queryset = Testimonial.objects.all()
    serializer_class = TestimonialSerializer

class AuthViewSet(viewsets.ViewSet):
    @action(detail=False, methods=['post'])
    def login(self, request):
        # Implement login logic here
        pass

    @action(detail=False, methods=['post'])
    def logout(self, request):
        # Implement logout logic here
        pass

class SearchViewSet(viewsets.ViewSet):
    @action(detail=False, methods=['get'])
    def search(self, request):
        query = request.query_params.get('q', '')
        vehicles = Vehicle.objects.filter(
            Q(make__icontains=query) | Q(model__icontains=query) | Q(description__icontains=query)
        )
        vehicle_serializer = VehicleSerializer(vehicles, many=True)
        return Response(vehicle_serializer.data)
