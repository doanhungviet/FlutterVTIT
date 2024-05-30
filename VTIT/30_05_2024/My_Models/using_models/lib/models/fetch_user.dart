import 'dart:convert';
import 'package:http/http.dart' as http;
import 'user.dart';  // Import model

Future<User> fetchUser() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));

  if (response.statusCode == 200) {
    // Parse JSON và tạo đối tượng User
    return User.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load user');
  }
}
