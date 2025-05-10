import 'package:dio/dio.dart';
import 'package:my_app/shared/services/api_service.dart';

class VehicleService {
  final ApiService _apiService = ApiService();

  Future<List<Vehicle>> fetchVehicles() async {
    try {
      final response = await _apiService.getRequest('/vehicles');
      return (response.data as List).map((vehicle) => Vehicle.fromJson(vehicle)).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Vehicle>> searchVehicles(String query) async {
    try {
      final response = await _apiService.getRequest('/vehicles/search?q=$query');
      return (response.data as List).map((vehicle) => Vehicle.fromJson(vehicle)).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Vehicle>> filterVehicles(Map<String, dynamic> filters) async {
    try {
      final response = await _apiService.postRequest('/vehicles/filter', filters);
      return (response.data as List).map((vehicle) => Vehicle.fromJson(vehicle)).toList();
    } catch (e) {
      rethrow;
    }
  }
}

class Vehicle {
  final String make;
  final String model;
  final int year;
  final double price;

  Vehicle({required this.make, required this.model, required this.year, required this.price});

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      make: json['make'],
      model: json['model'],
      year: json['year'],
      price: json['price'],
    );
  }
}
