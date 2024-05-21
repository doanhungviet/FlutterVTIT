import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Date and Icon Example',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late DateTime _currentTime;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    _timer = Timer.periodic(const Duration(seconds: 1), _updateTime);
  }

  void _updateTime(Timer timer) {
    setState(() {
      _currentTime = DateTime.now();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  //kem theo appbar nang cao

  @override
  Widget build(BuildContext context) {
    String formattedTime = DateFormat('yyyy-MM-dd kk:mm:ss').format(_currentTime);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
        centerTitle: true,
        title: const Text('Live Clock Example',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          )
        ),
        actions: [
          IconButton(
              onPressed: (){
                print('Search button pressed');
              },
              icon: const Icon(Icons.search)
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              print('More options button pressed');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.access_time,
              size: 50.0,
              color: Colors.green,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Current Time:',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              formattedTime,
              style: const TextStyle(
                  fontSize: 24.0, fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
