import 'dart:io' show Platform;

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adaptive Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android App'),
      ),
      body: Center(
        child: Platform.isAndroid
            ? AndroidWidget()
            : const Text('This widget is not optimized for this platform.'),
      ),
    );
  }
}

class AndroidWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const Text(
        'Android Widget',
        style: TextStyle(fontSize: 24.0, color: Colors.white),
      ),
    );
  }
}
