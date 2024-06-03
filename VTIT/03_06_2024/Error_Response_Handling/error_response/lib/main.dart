import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/api_provider.dart';
import 'widgets/error_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApiProvider(),
      child: MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Handling Example'),
      ),
      body: Center(
        child: apiProvider.error.isEmpty
            ? Text(apiProvider.data)
            : ErrorDialog(message: apiProvider.error),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          apiProvider.getData('https://jsonplaceholder.typicode.com/posts/1');
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
