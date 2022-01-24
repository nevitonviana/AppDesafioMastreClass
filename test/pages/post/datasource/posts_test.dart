import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:app_desafios_masterclass/pages/post/datasource/posts.dart';

class PostsMock  extends Mock implements Posts{}

void main(){

  final post = PostsMock();

  test("", ()async{
    final result = await post.getPosts();
    print(result == null);

  });


}