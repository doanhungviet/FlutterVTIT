import 'package:dio/dio.dart';
import '../models/api_error.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<dynamic> fetchData(String url) async {
    try {
      final response = await _dio.get(url);
      return response.data;
    } on DioException catch (e) {
      if (e.response != null) {
        throw ApiError.fromJson(e.response!.data);
      } else {
        throw ApiError(message: 'Network error');
      }
    }
  }
}
