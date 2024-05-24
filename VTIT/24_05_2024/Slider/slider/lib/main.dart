import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider Example',
      home: SliderExample(),
    );
  }
}

class SliderExample extends StatefulWidget {
  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _value = 50.0; // Giá trị mặc định của slider

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Giá trị hiện tại: $_value'),
            Slider(
              value: _value,
              min: 0.0,
              max: 100.0,
              divisions: 1000, // Chia slider thành 1000 phần
              onChanged: (double newValue) {
                setState(() {
                  _value = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
