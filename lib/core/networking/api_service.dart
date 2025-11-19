import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/core/networking/api_constants.dart';


@LazySingleton()
class ApiService {
  final Dio _dio;
  static const _baseUrl = ApiConstants.baseUrl;
  static const _apiKey = ApiConstants.apiKey;

  ApiService(this._dio);
  Future<Map<String, dynamic>> get(
   {required String endpoint,
    Map<String, dynamic>? queries,}
  ) async {
    var response = await _dio.get(
      "$_baseUrl$endpoint",
      queryParameters: {
        'apiKey': _apiKey,
        'removeduplicate':"1",
        'country':'us',
        'language':'en', 
        ...?queries,
      },
    );
    return response.data;
  }
}
