import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Google Map Demo',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Simple Maps App'),
            backgroundColor: Colors.green[700],
          ),
          body: BasicMap(),
        ),
    );
  }
}
class BasicMap extends StatefulWidget {
  const BasicMap({super.key});

  @override
  State<BasicMap> createState() => _BasicMapState();
}

class _BasicMapState extends State<BasicMap> {

  late GoogleMapController mapController;
  void _onMapCreated(GoogleMapController controller){
    mapController = controller;
  }
  static final CameraPosition _position = CameraPosition(
    target: LatLng(21.0236205,105.7696281),
    zoom: 17
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          mapType:  MapType.hybrid,
          initialCameraPosition: _position,
          onMapCreated: _onMapCreated,
      ),
    );
  }
}



