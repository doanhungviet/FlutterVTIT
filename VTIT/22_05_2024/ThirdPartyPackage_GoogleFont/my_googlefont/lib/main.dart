import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  String _data = 'Fetching data...';
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchData();
  }
  
  Future<void> _fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    if(response.statusCode == 200){
      final jsonData = json.decode(response.body);
      setState(() {
        _data = jsonData[
          'title'
        ];
      });
    }else{
      setState(() {
        _data = ' Failed to load data ';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo',style: GoogleFonts.lato()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: _data,
              style: GoogleFonts.lato(fontSize:20, color: Colors.red)
            ),
          ),
        ),
      ),
    );
  }
}

