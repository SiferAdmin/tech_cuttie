// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:path/path.dart' as path;
// import 'dart:io' as io;
// // ignore: unused_import
// import 'package:firebase_core/firebase_core.dart' as firebase_core;
// // ignore: unused_import
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';

// /// Enum representing the upload task types the example app supports.
// enum UploadType {
//   /// Uploads a randomly generated string (as a file) to Storage.
//   string,

//   /// Uploads a file from the device.
//   file,

//   /// Clears any tasks from the list.
//   clear,
// }
// enum ImageSourceType { gallery, camera }

// class ChangePhoto extends StatelessWidget {
//   void _handleURLButtonPress(BuildContext context, var type) {
//     Navigator.push(context,
//         MaterialPageRoute(builder: (context) => ImageFromGalleryEx(type)));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Image Picker Example"),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               MaterialButton(
//                 color: Colors.blue,
//                 child: const Text(
//                   "Pick Image from Gallery",
//                   style: TextStyle(
//                       color: Colors.white70, fontWeight: FontWeight.bold),
//                 ),
//                 onPressed: () {
//                   _handleURLButtonPress(context, ImageSourceType.gallery);
//                 },
//               ),
//               MaterialButton(
//                 color: Colors.blue,
//                 child: const Text(
//                   "Pick Image from Camera",
//                   style: TextStyle(
//                       color: Colors.white70, fontWeight: FontWeight.bold),
//                 ),
//                 onPressed: () {
//                   _handleURLButtonPress(context, ImageSourceType.camera);
//                 },
//               ),
//             ],
//           ),
//         ));
//   }
// }

// class ImageFromGalleryEx extends StatefulWidget {
//   final type;
//   ImageFromGalleryEx(this.type);

//   @override
//   ImageFromGalleryExState createState() => ImageFromGalleryExState(this.type);
// }

// class ImageFromGalleryExState extends State<ImageFromGalleryEx> {
//   var _image;
//   var imagePicker;
//   var type;

//   ImageFromGalleryExState(this.type);

//   @override
//   void initState() {
//     super.initState();
//     imagePicker = new ImagePicker();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text(type == ImageSourceType.camera
//               ? "Image from Camera"
//               : "Image from Gallery")),
//       body: Column(
//         children: <Widget>[
//           SizedBox(
//             height: 52,
//           ),
//           Center(
//             child: GestureDetector(
//               onTap: () async {
//                 var source = type == ImageSourceType.camera
//                     ? ImageSource.camera
//                     : ImageSource.gallery;
//                 XFile image = await imagePicker.pickImage(
//                     source: source,
//                     imageQuality: 50,
//                     preferredCameraDevice: CameraDevice.front);
//                 setState(() {
//                   _image = io.File(image.path);
//                 });
//               },
//               child: Container(
//                 width: 200,
//                 height: 200,
//                 decoration: BoxDecoration(color: Colors.red[200]),
//                 child: _image != null
//                     ? Image.file(
//                         _image,
//                         width: 200.0,
//                         height: 200.0,
//                         fit: BoxFit.fitHeight,
//                       )
//                     : Container(
//                         decoration: BoxDecoration(color: Colors.red[200]),
//                         width: 200,
//                         height: 200,
//                         child: Icon(
//                           Icons.camera_alt,
//                           color: Colors.grey[800],
//                         ),
//                       ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
