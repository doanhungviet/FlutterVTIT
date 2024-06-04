import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DeleteRequestExample(),
    );
  }
}

class DeleteRequestExample extends StatefulWidget {
  @override
  _DeleteRequestExampleState createState() => _DeleteRequestExampleState();
}

class _DeleteRequestExampleState extends State<DeleteRequestExample> {
  String _response = 'Chưa gửi yêu cầu';

  Future<void> sendDeleteRequest() async {
    const url = 'https://jsonplaceholder.typicode.com/posts/1'; // URL thay thế của bạn
    final response = await http.delete(Uri.parse(url));

    setState(() {
      if (response.statusCode == 200) {
        _response = 'Yêu cầu DELETE thành công!';
      } else {
        _response = 'Yêu cầu DELETE thất bại: ${response.statusCode}';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DELETE Request Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_response),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: sendDeleteRequest,
              child: const Text('Gửi yêu cầu DELETE'),
            ),
          ],
        ),
      ),
    );
  }
}
