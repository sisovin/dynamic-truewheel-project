from rest_framework import serializers
from .models import User, Vehicle, Dealer, Testimonial

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'email', 'username', 'first_name', 'last_name', 'is_active', 'is_staff', 'is_superuser', 'date_joined']

class VehicleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Vehicle
        fields = ['id', 'make', 'model', 'year', 'price', 'description', 'dealer']

class DealerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Dealer
        fields = ['id', 'name', 'address', 'phone_number', 'email']

class TestimonialSerializer(serializers.ModelSerializer):
    class Meta:
        model = Testimonial
        fields = ['id', 'user', 'vehicle', 'content', 'rating', 'created_at']
