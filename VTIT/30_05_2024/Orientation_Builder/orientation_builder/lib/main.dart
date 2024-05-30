import 'package:flutter/material.dart';

// The main function is the entry point of the Flutter application
void main() {
  runApp(MyApp());
}

// MyApp is a StatelessWidget that sets up the MaterialApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orientation Builder Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// MyHomePage is a StatelessWidget that represents the main screen of the app
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientation Builder Example'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          // The builder function of OrientationBuilder provides the current orientation
          return Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              width: orientation == Orientation.portrait ? 200.0 : 300.0,
              height: orientation == Orientation.portrait ? 200.0 : 150.0,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Hello, Orientation Builder!',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
