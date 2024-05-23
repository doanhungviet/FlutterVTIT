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
      title: 'Single Scrollable Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signal Scrollable Demo '),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            for(var i = 0; i<30;i++)
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(16),
                color: Colors.blueAccent,
                child: Text('Item $i',
                  style: const TextStyle(fontSize: 24,color: Colors.white)
                ),
              ),
          ],
        ),
      )
    );
  }
}
