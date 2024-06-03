import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/api_error.dart';

class ApiProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  String _data = '';
  String _error = '';

  String get data => _data;
  String get error => _error;

  Future<void> getData(String url) async {
    try {
      _data = await _apiService.fetchData(url);
      _error = '';
    } catch (e) {
      if (e is ApiError) {
        _error = e.message;
      } else {
        _error = 'An unexpected error occurred';
      }
    } finally {
      notifyListeners();
    }
  }
}
