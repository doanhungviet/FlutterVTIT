import 'package:flutter/material.dart';
// import 'package:multiple_screen/screens/home_screen.dart';
// import 'package:multiple_screen/screens/second_screen.dart';
import 'package:multiple_screen/screens/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      // initialRoute: '/',
      // routes: {
      //   // '/': (context) => HomeScreen(),
      //   // '/second': (context) => SecondScreen(),
      // },
      home: const ThirtdScreen(),
    );
  }
}