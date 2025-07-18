import 'package:demo_project/common_widgets/dialog_screen.dart';
import 'package:demo_project/view/nav_bar/first_nav_bar.dart';
import 'package:demo_project/view/nav_bar/image_picker.dart';
import 'package:demo_project/view/nav_bar/searching_bar.dart';
import 'package:demo_project/view/nav_bar/second_nav_bar.dart';
import 'package:demo_project/view/nav_bar/sliver_bar.dart';
import 'package:demo_project/view/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widgets/snackbar.dart';

class DemoNavBarBackButton extends StatefulWidget {
  const DemoNavBarBackButton({super.key});

  @override
  State<DemoNavBarBackButton> createState() => _DemoNavBarBackButtonState();
}

class _DemoNavBarBackButtonState extends State<DemoNavBarBackButton> {
  bool isTrue = false;
  int selectedIndex = 0;
  List screenList = [
    FirstScreenNavbar(),
    SecondScreenNaviBar(),
    SearchingBar(),
    ContactScreen(),
    ImagePickerClass(),
  ];
  List<int> navBaForRemoveBackIndex = [0];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (navBaForRemoveBackIndex.length > 1) {
          navBaForRemoveBackIndex.removeLast();
          print("remove index = $navBaForRemoveBackIndex");
          setState(() {
            selectedIndex = navBaForRemoveBackIndex.last;
          });

          return false;
        } else {
          bool exit = await showDialog(context: context, builder: (context) => DialogScreen());

          return exit;
        }

      },
      child: Scaffold(
        body: screenList[selectedIndex],

        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.red,
          selectedItemColor: Colors.black,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              if (selectedIndex != value) {
                navBaForRemoveBackIndex.add(value);
              }

              print(" navbarIndex = $navBaForRemoveBackIndex");
              selectedIndex = value;
              print(" value index = $value");
              print(" selectedIndex = $selectedIndex");
            });
          },

          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "list"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: "contact",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.image), label: "image"),
          ],
        ),
      ),
    );
  }
}
