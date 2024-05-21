import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'image_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MyApp(camera: firstCamera));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  MyApp({required this.camera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Picker Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(camera: camera),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  final CameraDescription camera;

  MyHomePage({required this.camera});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? _imageFile;

  Future<void> _takePicture() async {
    final imageFile = await takePicture(widget.camera);
    if (imageFile != null) {
      final compressedImage = await compressImage(imageFile);
      setState(() {
        _imageFile = compressedImage;
      });
    }
  }

  Future<void> _pickImage() async {
    final imageFile = await pickImageFromGallery();
    if (imageFile != null) {
      final compressedImage = await compressImage(imageFile);
      setState(() {
        _imageFile = compressedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker Example'),
      ),
      body: SingleChildScrollView( // Sử dụng SingleChildScrollView để tránh lỗi bottom overflowed
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (_imageFile != null) Image.file(_imageFile!),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _takePicture,
                child: const Text('Take Picture'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _pickImage,
                child: const Text('Pick Image from Gallery'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}