// lib/place_model.dart
import 'package:flutter/foundation.dart';

class Place {
  final String id;
  final String title;
  final double latitude;
  final double longitude;

  Place({
    required this.id,
    required this.title,
    required this.latitude,
    required this.longitude,
  });
}
