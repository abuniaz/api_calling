import 'package:api_calling/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var respone = await client.get(uri);

    if (respone.statusCode == 200) {
      var json = respone.body;
      return postFromJson(json);
    }
  }
}
