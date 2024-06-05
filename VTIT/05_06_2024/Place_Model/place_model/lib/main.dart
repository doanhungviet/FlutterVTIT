// lib/main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'places_provider.dart';
import 'place_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => PlacesProvider(),
      child: MaterialApp(
        title: 'Places App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PlacesListScreen(),
      ),
    );
  }
}

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => AddPlaceScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Consumer<PlacesProvider>(
        child: const Center(
          child: Text('No places added yet!'),
        ),
        builder: (ctx, placesProvider, ch) => placesProvider.places.length <= 0
            ? ch!
            : ListView.builder(
          itemCount: placesProvider.places.length,
          itemBuilder: (ctx, i) => ListTile(
            title: Text(placesProvider.places[i].title),
          ),
        ),
      ),
    );
  }
}

class AddPlaceScreen extends StatefulWidget {
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();
  final _latitudeController = TextEditingController();
  final _longitudeController = TextEditingController();

  void _savePlace() {
    final title = _titleController.text;
    final latitude = double.parse(_latitudeController.text);
    final longitude = double.parse(_longitudeController.text);

    if (title.isEmpty || latitude == null || longitude == null) {
      return;
    }

    Provider.of<PlacesProvider>(context, listen: false).addPlace(
      title,
      latitude,
      longitude,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a New Place'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: _titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Latitude'),
              keyboardType: TextInputType.number,
              controller: _latitudeController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Longitude'),
              keyboardType: TextInputType.number,
              controller: _longitudeController,
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text('Add Place'),
              onPressed: _savePlace,
            ),
          ],
        ),
      ),
    );
  }
}
