import 'package:dio/dio.dart';
import 'package:flutter_recruitment_task/config/app_params.dart';

class ApiInterceptor extends InterceptorsWrapper {
  final AppParams params;

  ApiInterceptor({
    required this.params,
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addEntries([
      MapEntry<String, String>('api_key', params.apiKey),
    ]);
    handler.next(options);
  }
}
