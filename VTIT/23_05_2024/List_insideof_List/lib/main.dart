import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    List<List<int>> listOfLists = [
      [1,2,3],
      [4,5,6],
      [7,8,9],
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ví dụ danh sách lồng nhau'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for(var list in listOfLists)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for (var item in list)
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(item.toString()),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
