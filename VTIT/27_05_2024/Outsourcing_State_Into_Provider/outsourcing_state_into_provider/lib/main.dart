import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'item_list_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemListProvider(),
      child: MaterialApp(
        title: 'Flutter Provider Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemListProvider = Provider.of<ItemListProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Provider Example'),
      ),
      body: ListView.builder(
        itemCount: itemListProvider.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(itemListProvider.items[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                itemListProvider.removeItem(itemListProvider.items[index]);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          itemListProvider.addItem('New Item');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

