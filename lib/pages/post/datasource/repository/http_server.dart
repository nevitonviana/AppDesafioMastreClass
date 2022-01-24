import 'package:dio/dio.dart';

import 'dio_repository.dart';

class GetPost implements IHttpServer{
  final Dio _dio;

  GetPost(this._dio);

  @override
  Future get(String url) {
    final result = _dio.get(url);
    return result;
  }
}