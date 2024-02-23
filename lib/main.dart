import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  runApp(CameraBox(cameras: cameras));
}

class CameraBox extends StatelessWidget {
  final List<CameraDescription> cameras;

  const CameraBox({Key? key, required this.cameras}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(cameras: cameras),
    );
  }
}

