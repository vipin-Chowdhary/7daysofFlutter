import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {

  final picker = ImagePicker();

  /// Stores the selected images (max 5)
  RxList<XFile?> uploadImages = List<XFile?>.generate(5, (_) => null).obs;

  /* Pick image using camera or gallery*/
  Future<void> pickImage(int index, BuildContext context) async {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Camera'),
                onTap: () async {
                  Navigator.pop(context);
                  final picked = await picker.pickImage(source: ImageSource.camera);
                  if (picked != null) {
                    uploadImages[index] = picked;
                  }
                },
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Gallery'),
                onTap: () async {
                  Navigator.pop(context);
                  final picked = await picker.pickImage(source: ImageSource.gallery);
                  if (picked != null) {
                    uploadImages[index] = picked;
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void removeImage(int index) {
    uploadImages[index] = null;
  }

//   **********

  RxList<Map<String, dynamic>> mapValue = <Map<String, dynamic>>[
    {"name": "vipin", "isTrue": false},
    {"name": "vikas", "isTrue": false},
    {"name": "vishal", "isTrue": false},
    {"name": "hari", "isTrue": false},
    {"name": "abhishek", "isTrue": false},
    {"name": "anuj sir", "isTrue": false},
    {"name": "anurag sir", "isTrue": false},
  ].obs;

  RxString selectedValue = ''.obs;
   RxList<String> isSelected = RxList<String>();
  // RxSet<String> isSelected = RxSet<String>();


  void checkBoxMethod(val, Map<String, dynamic> e) {
    e["isTrue"] = val ?? false;

    if (e["isTrue"] == true) {
      if (!isSelected.contains(e["name"])) {
        isSelected.add(e["name"]);
      }
    } else {
      isSelected.remove(e["name"]);
    }

     mapValue.refresh();
  }


}
