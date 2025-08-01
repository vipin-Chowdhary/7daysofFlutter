import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/image_controller.dart';

class ImageScreen extends StatelessWidget {
  final ImageController controller = Get.put(ImageController());

  ImageScreen({super.key});

  Widget buildUploadBox(int index, double height, double width) {
    return Obx(() {
      final file = controller.uploadImages[index];
      return file == null
          ? DottedBorder(
            options: RoundedRectDottedBorderOptions(
              color: Colors.green,
              radius: Radius.circular(5),
            ),
            child: GestureDetector(
              onTap: () => controller.pickImage(index, Get.context!),
              child: Container(
                color: Colors.transparent,
                width: width,
                height: height,
                child: Center(child: Icon(Icons.add, color: Colors.green)),
              ),
            ),
          )
          : Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: FileImage(File(file.path)),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: -7,
                right: -7,
                child: GestureDetector(
                  onTap: () => controller.removeImage(index),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.black.withValues(alpha: 0.6),
                    child: Icon(Icons.close, size: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final double spacing = height * 0.010;
    final double withSpacing = width * 0.025;
    final double boxWidth = width * 0.25;
    final double boxHeight = 96;
    final double leftBoxHeight = 200;
    final double leftBoxWidth = width * 0.39;

    return Scaffold(
      appBar: AppBar(title: Text("Uploading Image")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: leftBoxWidth,
                      height: leftBoxHeight,
                      child: buildUploadBox(0, leftBoxHeight, leftBoxWidth),
                    ),
                    SizedBox(width: withSpacing),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            width: boxWidth,
                            height: boxHeight,
                            child: buildUploadBox(1, boxHeight, boxWidth),
                          ),
                          SizedBox(height: spacing),
                          SizedBox(
                            width: boxWidth,
                            height: boxHeight,
                            child: buildUploadBox(2, boxHeight, boxWidth),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: withSpacing),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            width: boxWidth,
                            height: boxHeight,
                            child: buildUploadBox(3, boxHeight, boxWidth),
                          ),
                          SizedBox(height: spacing),
                          SizedBox(
                            width: boxWidth,
                            height: boxHeight,
                            child: buildUploadBox(4, boxHeight, boxWidth),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Obx(() => Wrap(
                runSpacing: 10,
                children: controller.mapValue.map((e) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.red.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Checkbox(
                          value: e["isTrue"],
                          onChanged: (val) {
                            controller.checkBoxMethod(val, e);
                            print("Selected: ${controller.isSelected}");
                          },
                        ),
                        Text(
                          e["name"][0].toUpperCase() + e["name"].substring(1),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              )),

              Obx(
                () => Wrap(
                  children:
                      controller.isSelected.map((e) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8,
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.red.shade200,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),

                              Text(e[0].toUpperCase() + e.substring(1)),
                            ],
                          ),
                        );
                      }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
