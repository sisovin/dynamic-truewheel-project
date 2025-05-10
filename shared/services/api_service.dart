import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  ApiService() {
    _configureDio();
  }

  void _configureDio() {
    _dio.options.baseUrl = 'https://api.example.com';
    _dio.options.connectTimeout = 5000;
    _dio.options.receiveTimeout = 3000;
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Add any request interceptors here
        return handler.next(options);
      },
      onResponse: (response, handler) {
        // Add any response interceptors here
        return handler.next(response);
      },
      onError: (DioError e, handler) {
        // Handle errors globally
        _handleError(e);
        return handler.next(e);
      },
    ));
  }

  void _handleError(DioError error) {
    // Implement error handling logic here
    if (error.type == DioErrorType.connectTimeout) {
      print('Connection Timeout Exception');
    } else if (error.type == DioErrorType.receiveTimeout) {
      print('Receive Timeout Exception');
    } else if (error.type == DioErrorType.response) {
      print('Received invalid status code: ${error.response?.statusCode}');
    } else {
      print('Unexpected error: $error');
    }
  }

  Future<Response> getRequest(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> postRequest(String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
