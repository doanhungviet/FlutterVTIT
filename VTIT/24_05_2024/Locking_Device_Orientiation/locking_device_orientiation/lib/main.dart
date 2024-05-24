import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orientation Lock Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientation Lock Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Orientation is locked to portrait mode',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://cdn.vjshop.vn/tin-tuc/phan-biet-raw-va-jpeg/phan-biet-raw-va-jpeg-14.jpg',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Click me!'),
            ),
          ],
        ),
      ),
    );
  }
}
