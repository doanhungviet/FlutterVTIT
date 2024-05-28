import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_button.dart';
import 'favorite_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteState(),
      child: const MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Button Demo'),
      ),
      body: const Center(
        child: FavoriteButton(),
      ),
    );
  }
}


