class AppConstants {
  static const String appName = 'Dynamic Truewheel Project';
  static const String appVersion = '1.0.0';
  static const String appDescription = 'A web application with a Django REST API backend and a Flutter web app frontend.';
}

class ApiEndpoints {
  static const String baseUrl = 'https://api.example.com';
  static const String login = '$baseUrl/login';
  static const String register = '$baseUrl/register';
  static const String vehicles = '$baseUrl/vehicles';
  static const String searchVehicles = '$baseUrl/vehicles/search';
  static const String filterVehicles = '$baseUrl/vehicles/filter';
  static const String submitNewsletter = '$baseUrl/newsletter/submit';
}
