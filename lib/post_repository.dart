
// SRP : 데이터를 가져오는 곳 (휴대폰 디바이스(파일), 휴대폰 DB, Firebase(외부서버), 내서버, 공공데이터서버)
import 'package:dio/dio.dart';
import 'package:mockapp/http_util.dart';
import 'package:mockapp/post_list_page_vm.dart';
import 'package:mockapp/post_page_vm.dart';

class PostRepository {

  const PostRepository();

  Future<Post> getPost() async{
    Response response = await dio.get("/posts/1");
    Map<String, dynamic> body = response.data;
    return Post.fromMap(body);
  }

  Future<List<Post2>> getPostList() async{
    Response response = await dio.get("/posts");
    List<dynamic> list = response.data;
    return list.map((e) => Post2.fromMap(e)).toList();
  }
}