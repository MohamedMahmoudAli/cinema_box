import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio = Dio();

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      return _handleResponse(response); // Handle 200-299
    } on DioException catch (e) {
      throw Exception(e.message); // Handle 400, 401, 500, etc.
    }
  }

  Response _handleResponse(Response response) {
    // Even if 200, some APIs return success: false in the body
    return response;
  }
}
