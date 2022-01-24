
import 'package:dio/dio.dart';

import 'http_server.dart';

class GetPost implements IHttpServer{
  final Dio _dio;

  GetPost(this._dio);

  @override
  Future get(String url) {
    final result = _dio.get(url);
    return result;
  }
}