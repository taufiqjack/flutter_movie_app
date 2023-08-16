import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class  
RestConfig {
  static BaseOptions options() => BaseOptions(
        baseUrl: '${dotenv.env['BASE_URL']}',
        connectTimeout: 10000,
        receiveTimeout: 10000,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        followRedirects: false,
        validateStatus: (status) => true,
      );

  final Dio _dio;

  RestConfig(
    this._dio,
  );

  Dio dio() {
    return _dio;
  }
}
