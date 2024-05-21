import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Modal Sheet Example',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
                builder: (BuildContext context){
                  return Container(
                    height: MediaQuery.of(context).size.height*0.8,
                    child: const Padding(
                      padding: EdgeInsets.all(32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('This is Modal Sheet',
                              style: TextStyle(
                                  fontSize: 24),
                          ),
                          SizedBox(height: 20),
                          Text('You can swipe down to dismiss',
                          style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  );
                }
            );
          }, child: const Text('Open Modal Sheet'),
        ),
      ),
    );
  }
}

