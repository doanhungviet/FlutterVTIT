import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/places_list_screen.dart';
import './providers/places.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Places(),
      child: MaterialApp(
        title: 'Places App',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        ),
        home: PlacesListScreen(),
      ),
    );
  }
}
