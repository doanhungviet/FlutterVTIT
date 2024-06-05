// lib/places_provider.dart
import 'package:flutter/foundation.dart';
import 'place_model.dart';

class PlacesProvider with ChangeNotifier {
  List<Place> _places = [];

  List<Place> get places => [..._places];

  void addPlace(String title, double latitude, double longitude) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      title: title,
      latitude: latitude,
      longitude: longitude,
    );
    _places.add(newPlace);
    notifyListeners();
  }
}
