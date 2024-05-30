import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Demo Yeu Cau HTTP',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _response = '';

  Future<void> fetchData() async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    if (response.statusCode == 200) {
      // Nếu máy chủ trả về mã phản hồi 200 OK, phân tích cú pháp JSON
      final jsonData = jsonDecode(response.body);
      setState(() {
        _response = jsonData['title'];
      });
    } else {
      // Nếu máy chủ không trả về mã phản hồi 200 OK, ném ra một ngoại lệ.
      throw Exception('Không thể tải dữ liệu');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Yêu Cầu HTTP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                fetchData();
              },
              child: const Text('Lấy Dữ Liệu'),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Phản Hồi: $_response',
                textAlign: TextAlign.justify,

                style: const TextStyle(fontSize: 18,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


