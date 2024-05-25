// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class ApiServes {
  final Dio _dio;
  ApiServes(
    this._dio,
  );
  final paseUrl = "https://www.googleapis.com/books/v1/";

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$paseUrl$endPoint');
    return response.data;
  }
}
