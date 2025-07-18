import 'package:demo_project/utils/app_routes_constant.dart';
import 'package:demo_project/view/nav_bar/searching_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

snackBar() {
  Get.snackbar(
    "Vipin",
    "hello duniya wallo kese ho",

    icon: Column(
      children: [Icon(Icons.account_circle), Icon(Icons.ac_unit_sharp)],
    ),
  );
}

//========================


snackBarForDialogBox() {
  Get.snackbar(
    "Done",
    "you did it Successfully",

    icon: Column(
      children: [Icon(Icons.account_circle), Icon(Icons.ac_unit_sharp)],
    ),
  );
}
dialogBox() {
  Get.defaultDialog(
    title: "Subject",

    middleText: "Hello everyone how are you  ",
    cancelTextColor: Colors.green,
    buttonColor: Colors.yellow,

    actions: [
      OutlinedButton(
        onPressed: () {
          Get.back();
        },
        child: Text("Cancel"),
      ),
      ElevatedButton(
        onPressed: () {

          Get.back();
          snackBarForDialogBox();
        },
        child: Text("Done"),
      ),
    ],
  );
}
// ==================bottom sheet============
bottomSheetForDemo(){
  Get.bottomSheet(Container(height: 500,width: double.infinity,
  child: Column(children: [
    SizedBox(height: 20),
     Container(height: 6,width: 150,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(40)),)

  ],),
  ),backgroundColor: Colors.white);
}

//==========nav dialog box=======
navDialogBox() {
  Get.defaultDialog(
    title: "Back",

    middleText: "Do you want to exit from this page screen",
    cancelTextColor: Colors.green,
    buttonColor: Colors.yellow,

    actions: [
      OutlinedButton(
        onPressed: () {
          Get.back();

        },
        child: Text("No"),
      ),
      ElevatedButton(
        onPressed: () {

 Get.to(AppRoutes.loginScreen);






        },
        child: Text("Yes"),
      ),
    ],
  );
}