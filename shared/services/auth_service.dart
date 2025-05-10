import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final Dio _dio = Dio();
  String? _token;

  AuthService() {
    _loadToken();
  }

  Future<void> _loadToken() async {
    final prefs = await SharedPreferences.getInstance();
    _token = prefs.getString('auth_token');
    if (_token != null) {
      _dio.options.headers['Authorization'] = 'Bearer $_token';
    }
  }

  Future<void> _saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_token', token);
    _token = token;
    _dio.options.headers['Authorization'] = 'Bearer $_token';
  }

  Future<void> _removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_token');
    _token = null;
    _dio.options.headers.remove('Authorization');
  }

  Future<bool> login(String email, String password) async {
    try {
      final response = await _dio.post(
        'https://api.example.com/login',
        data: {'email': email, 'password': password},
      );
      if (response.statusCode == 200) {
        await _saveToken(response.data['token']);
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<void> logout() async {
    await _removeToken();
  }

  Future<bool> isAuthenticated() async {
    return _token != null;
  }
}
