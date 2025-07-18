import 'package:demo_project/view/demo_nav_bar_back_button.dart';
import 'package:demo_project/view/nav_bar/navi_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Back"),
            SizedBox(height: 20),
            Text("Do you want to exit from this page"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("No"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CustomNavigationBar(),));
                  },
                  child: Text("Yes"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
