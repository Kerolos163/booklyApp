import 'package:dio/dio.dart';

class ApiService {
  final Base_Url = "https://www.googleapis.com/books/v1/";
  final Dio dio;

  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String end_point}) async {
    var response = await dio.get('$Base_Url$end_point');
    return response.data;
  }
}
