import 'repository/http_server.dart';

class Posts{
  final IHttpServer _iHttpServer;

  Posts(this._iHttpServer);

  Future<dynamic> getPosts()async{
    const url = "https://jsonplaceholder.typicode.com/posts";
    final result = await _iHttpServer.get(url);
    return result;
  }
}