
import 'package:dio/dio.dart';

import 'http_server.dart';

class DioRepository implements IHttpServer{
  final Dio _dio;

  DioRepository(this._dio);

  @override
  Future<dynamic> get(String url)async {
    final result = await _dio.get(url);
    return result;
  }
}