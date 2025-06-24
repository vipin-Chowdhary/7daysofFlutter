import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerClass extends StatefulWidget {
  const ImagePickerClass({super.key});

  @override
  State<ImagePickerClass> createState() => _ImagePickerClassState();
}

class _ImagePickerClassState extends State<ImagePickerClass> {
  // Future<void> imagePickerMethod() async{
  //   final  _picker = ImagePicker().pickImage(source: source);
  //
  // }
  XFile? image;
  Future<void> imagePickerMethod() async {
    final vipin = ImagePicker();
    final cameraImage = await vipin.pickImage(source: ImageSource.camera);
    if (cameraImage != null) {
      setState(() {
        image = XFile(cameraImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage:
                    image == null ? null : FileImage(File(image!.path)),
                child: Icon(Icons.person),
              ),
            ),

            SizedBox(height: 40),
            TriangleWidget(color: Colors.red, size: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          imagePickerMethod();
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}

//==========
enum TriangleDirection { up, down, left, right }

class TriangleWidget extends StatelessWidget {
  final double size;
  final Color color;
  final TriangleDirection direction;

  const TriangleWidget({
    super.key,
    required this.size,
    required this.color,
    this.direction = TriangleDirection.up,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: TrianglePainter(color: color, direction: direction),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;
  final TriangleDirection direction;

  TrianglePainter({required this.color, required this.direction});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(20, 400);
    final paint =
        Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4;
    canvas.drawCircle(center, 50, paint);


    final path = Path();
    path.moveTo(0, 100);
     path.lineTo(100, 100);
     path.lineTo(100, 0);
     path.lineTo(0, 0);
    path.close();
    canvas.drawPath(path, paint);



    // switch (direction) {
    //   case TriangleDirection.up:
    //      path.moveTo(0, 100);
    //      path.lineTo(100, 0);
    //      path.lineTo(0, -100);
    //      path.lineTo(-100, 0);
    //     break;
    //   case TriangleDirection.down:
    //     path.moveTo(0, 0);
    //     path.lineTo(size.width, 0);
    //     path.lineTo(size.width / 2, size.height);
    //     break;
    //   case TriangleDirection.left:
    //     path.moveTo(size.width, 0);
    //     path.lineTo(0, size.height / 2);
    //     path.lineTo(size.width, size.height);
    //     break;
    //   case TriangleDirection.right:
    //     path.moveTo(0, 0);
    //     path.lineTo(size.width, size.height / 2);
    //     path.lineTo(0, size.height);
    //     break;
    // }


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
