import 'dart:convert';
import 'package:http/http.dart' as http;
import 'post.dart';

class ApiService {
  static Future<List<PostDL>> getPosts() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      return list.map((model) => PostDL.fromJson(model)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
