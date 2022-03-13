import '/pages/post/datasource/posts.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'widgets/card_post.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final _getPosts = GetIt.I.get<Posts>();



  // @override
  // void initState() {
  //   final restul =_getPosts.getPosts();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) => CardPost(
          id: '1',
          title: "teste",
          description: "tesztetste",
        ),
      ),
    );
  }
}
