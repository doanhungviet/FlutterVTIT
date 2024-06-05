import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/places.dart';
import 'add_place_screen.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) =>  AddPlaceScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Consumer<Places>(
        child: const Center(
          child: Text('Got no places yet, start adding some!'),
        ),
        builder: (ctx, places, ch) => places.items.length <= 0
            ? ch!
            : ListView.builder(
          itemCount: places.items.length,
          itemBuilder: (ctx, i) => ListTile(
            leading: CircleAvatar(
              backgroundImage: FileImage(places.items[i].image),
            ),
            title: Text(places.items[i].title),
          ),
        ),
      ),
    );
  }
}
