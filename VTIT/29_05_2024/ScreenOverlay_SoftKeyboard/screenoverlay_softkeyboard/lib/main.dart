import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soft Keyboard Handling',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
//jlkdfjkldfsjklfdsjklfdsjkldf
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soft Keyboard Handling'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(labelText: 'Text Field 1'),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(labelText: 'Text Field 2'),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(labelText: 'Text Field 3'),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(labelText: 'Text Field 4'),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(labelText: 'Text Field 5'),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(labelText: 'Text Field 6'),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(labelText: 'Text Field 7'),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(labelText: 'Text Field 8'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
