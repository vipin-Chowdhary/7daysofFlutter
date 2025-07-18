import 'dart:io';

import 'package:demo_project/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../common_widgets/common_button.dart';

class ImagePickerClass extends StatefulWidget {
  const ImagePickerClass({super.key});

  @override
  State<ImagePickerClass> createState() => _ImagePickerClassState();
}

class _ImagePickerClassState extends State<ImagePickerClass> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();

  int first = 0;
  int second = 0;

  XFile? image;

  bool showFirst = false;

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
  void dispose() {
    firstController.clear();
    secondController.clear();
    super.dispose();
  }

  bool firstButton = false;
  bool secondButton = false;
  bool thirdButton = false;
  bool fourthButton = false;
  bool isTrue = false;
  List addList = [];

  void checkCondition() {
    if (firstButton && secondButton ||
        firstButton && thirdButton ||
        firstButton && fourthButton ||
        secondButton && thirdButton ||
        secondButton && fourthButton ||
        thirdButton && fourthButton) {
      isTrue = true;
    } else {
      isTrue = false;
    }
  }

  void checkCondition2() {
    if (firstButton && secondButton && thirdButton ||
        firstButton && thirdButton && fourthButton ||
        secondButton && thirdButton && fourthButton ||
        firstButton && secondButton && fourthButton) {
      isTrue = false;
    }
  }

  void checkCondition3() {
    if (firstButton && secondButton && thirdButton && fourthButton) {
      isTrue = false;
    }
  }

  List<bool> listValue = [false, false, false, false];
  int get dataFetch => listValue.where((e) => e).length;

  @override
  Widget build(BuildContext context) {
    print(" true index = $dataFetch");
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.none,
                      controller: firstController,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      onChanged: (value) {
                        setState(() {
                          if (value.isNotEmpty) {
                            first = int.parse(value);
                          } else {
                            first = 0;
                          }
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.none,
                      controller: secondController,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      onChanged: (value) {
                        setState(() {
                          if (value.isNotEmpty) {
                            second = int.parse(value);
                          } else {
                            second = 0;
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Text("$first + $second = ${first + second}"),
            SizedBox(height: 40),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: isTrue ? Colors.yellow : Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Switch(
                  value: firstButton,
                  onChanged: (value) {
                    setState(() {
                      firstButton = value;
                      checkCondition();
                      checkCondition2();
                      checkCondition3();
                      print("1 = $firstButton");
                    });
                  },
                ),
                Switch(
                  value: secondButton,
                  onChanged: (value) {
                    setState(() {
                      secondButton = value;
                      checkCondition();
                      checkCondition2();
                      checkCondition3();
                      print("2 = $secondButton");
                    });
                  },
                ),
                Switch(
                  value: thirdButton,
                  onChanged: (value) {
                    setState(() {
                      thirdButton = value;
                      checkCondition();
                      checkCondition2();
                      checkCondition3();
                      print("3 = $thirdButton");
                    });
                  },
                ),
                Switch(
                  value: fourthButton,
                  onChanged: (value) {
                    setState(() {
                      fourthButton = value;
                      checkCondition();
                      checkCondition2();
                      checkCondition3();
                      print("4 = $fourthButton");
                    });
                  },
                ),
              ],
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: dataFetch == 2 ? Colors.yellow : Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: listValue.length,
                itemBuilder: (context, index) {
                  return Switch(
                    value: listValue[index],
                    onChanged: (value) {
                      setState(() {
                        listValue[index] = value;
                        print("$listValue");
                      });
                    },
                  );
                },
              ),
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Switch(
            //       value: firstButton,
            //       onChanged: (value) {
            //         setState(() {
            //           firstButton = value;
            //
            //           print("1 = $firstButton");
            //         });
            //       },
            //     ),
            //     Switch(
            //       value: secondButton,
            //       onChanged: (value) {
            //         setState(() {
            //           secondButton = value;
            //
            //           print("2 = $secondButton");
            //         });
            //       },
            //     ),
            //     Switch(
            //       value: thirdButton,
            //       onChanged: (value) {
            //         setState(() {
            //           thirdButton = value;
            //
            //           print("3 = $thirdButton");
            //         });
            //       },
            //     ),
            //     Switch(
            //       value: fourthButton,
            //       onChanged: (value) {
            //         setState(() {
            //           fourthButton = value;
            //
            //           print("4 = $fourthButton");
            //         });
            //       },
            //     ),
            //   ],
            // ),
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
