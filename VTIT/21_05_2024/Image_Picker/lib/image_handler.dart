import 'dart:io';
import 'package:camera/camera.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

Future<File?> takePicture(CameraDescription cameraDescription) async {
  final cameraController = CameraController(
    cameraDescription,
    ResolutionPreset.high,
  );

  try {
    await cameraController.initialize();
    final image = await cameraController.takePicture();
    cameraController.dispose();
    return File(image.path);
  } catch (e) {
    cameraController.dispose();
    return null;
  }
}

Future<File?> pickImageFromGallery() async {
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);
  if (pickedFile != null) {
    return File(pickedFile.path);
  }
  return null;
}

Future<File> compressImage(File file) async {
  final image = img.decodeImage(file.readAsBytesSync());
  if (image == null) {
    throw Exception('Unable to decode image');
  }

  final compressedImage = img.encodeJpg(image, quality: 85);
  final directory = await getApplicationDocumentsDirectory();
  final compressedFile = File(path.join(directory.path, '${path.basenameWithoutExtension(file.path)}_compressed.jpg'))
    ..writeAsBytesSync(compressedImage);
  return compressedFile;
}