import 'package:app_desafios_masterclass/pages/post/datasource/repository/dio_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:app_desafios_masterclass/pages/post/datasource/posts.dart';

class PostsMock  extends Mock implements Posts{}

void main(){
  final _dio = Dio();
  final _iHttpServer = DioRepository(_dio);
  final post = Posts(_iHttpServer);

  test("deve retornar o status code 200", ()async{
    final result = await post.getPosts();
    expect(result.statusCode, 200 );
  });


}