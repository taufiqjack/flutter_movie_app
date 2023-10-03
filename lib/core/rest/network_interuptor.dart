import 'package:dio/dio.dart';

class NetworkInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 401) {
    } else if (response.statusCode == 402) {}
    return handler.next(response);
  }
}
