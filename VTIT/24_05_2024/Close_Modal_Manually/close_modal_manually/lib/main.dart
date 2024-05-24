import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isModalOpen = false;

  void _openModal() {
    setState(() {
      _isModalOpen = true;
    });
  }

  void _closeModal() {
    setState(() {
      _isModalOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _openModal,
          child: const Text('Open Modal'),
        ),
      ),
      // Kiểm tra và hiển thị modal nếu cần
      floatingActionButton: _isModalOpen
          ? FloatingActionButton(
        onPressed: _closeModal,
        child: const Icon(Icons.close),
      )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}