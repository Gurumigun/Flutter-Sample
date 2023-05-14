import 'package:camera/camera.dart';
import 'package:chapter_6_8/sceen/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}

// late List<CameraDescription> _camera;
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   _camera = await availableCameras();
//   runApp(app)
// }
//
// class CameraApp extends StatefulWidget {
//   const CameraApp({Key? key}) : super(key: key);
//
//   @override
//   State<CameraApp> createState() => _CameraAppState();
// }
//
// class _CameraAppState extends State<CameraApp> {
//   late CameraController controller;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//   }
//
//   initCamera() async {
//     try {
//       controller = CameraController(_camera[0], ResolutionPreset.max);
//       await controller.initialize();
//       setState(() {});
//     } catch( e) {
//       if (e is CameraException) {
//         print(e.description);
//       }
//     }
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Camera App'),
//         ),
//         body: CameraPreview(controller),
//       ),
//     );
//   }
// }
