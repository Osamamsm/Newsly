import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AppDio {
  static Dio create() {
    final dio = Dio();
    dio.interceptors.add(
      PrettyDioLogger(
        request: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        logPrint: (object) => print(object.toString()),
      ),
    );

    return dio;
  }
}
