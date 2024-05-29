import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BoxConstraints Example',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BoxConstraint Example'),
        ),
        body: const Center(
          child: ConstrainedBoxExample(),
        ),
      ),
    );
  }
}
class ConstrainedBoxExample extends StatelessWidget {
  const ConstrainedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 100,
          maxHeight: 200,
          minHeight: 100,
          maxWidth: 200,
        ),
        child: Container(
          color: Colors.red,
          width: 1000,// hien thi max width là 200 do co rang buoc
          height: 1000,// hien thi max height là 200 do co rang buoc
        ),
      ),
    );
  }
}


