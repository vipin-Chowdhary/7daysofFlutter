import 'package:demo_project/view/nav_bar/first_nav_bar.dart';
import 'package:demo_project/view/nav_bar/image_picker.dart';
import 'package:demo_project/view/nav_bar/searching_bar.dart';
import 'package:demo_project/view/nav_bar/second_nav_bar.dart';
import 'package:demo_project/view/nav_bar/sliver_bar.dart';
import 'package:demo_project/view/second_screen.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  bool isTrue = false;
  int selectedIndex = 0;
  List screenList = [
    FirstScreenNavbar(),
    SecondScreenNaviBar(),
    SearchingBar(),
    ContactScreen(),
    ImagePickerClass(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],

      bottomNavigationBar: Container(

        decoration: BoxDecoration(
            color: Colors.blueGrey,
            gradient: LinearGradient(
                begin: Alignment. centerLeft,
                end: Alignment. centerRight,
                stops: [0,0.5,1],
                colors: [Colors.pinkAccent.shade100,Colors.brown.shade200,Colors.black38,
        ])),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color:
                      selectedIndex == 0
                          ? Colors.purple.shade200
                          : Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    selectedIndex == 0
                        ? BoxShadow(
                          color: Colors.blue,
                          offset: Offset(0, 5),
                          spreadRadius: 8,
                          blurRadius: 5,
                        )
                        : BoxShadow(),
                    selectedIndex == 0
                        ? BoxShadow(
                          color: Colors.red,
                          offset: Offset(0, -5),
                          spreadRadius: 8,
                          blurRadius: 3,
                        )
                        : BoxShadow(),
                    selectedIndex == 0
                        ? BoxShadow(
                          color: Colors.green,
                          offset: Offset(-5, 0),
                          spreadRadius: 8,
                          blurRadius: 5,
                        )
                        : BoxShadow(),
                    selectedIndex == 0
                        ? BoxShadow(
                          color: Colors.purple,
                          offset: Offset(5, 0),
                          spreadRadius: 8,
                          blurRadius: 5,
                        )
                        : BoxShadow(),
                  ],
                ),
                child: Icon(Icons.home),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: selectedIndex == 1 ? Colors.purple.shade200 : Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    selectedIndex == 1
                        ? BoxShadow(
                      color: Colors.blue,
                      offset: Offset(0, 5),
                      spreadRadius: 8,
                      blurRadius: 5,
                    )
                        : BoxShadow(),
                    selectedIndex == 1
                        ? BoxShadow(
                      color: Colors.red,
                      offset: Offset(0, -5),
                      spreadRadius: 8,
                      blurRadius: 3,
                    )
                        : BoxShadow(),
                    selectedIndex == 1
                        ? BoxShadow(
                      color: Colors.green,
                      offset: Offset(-5, 0),
                      spreadRadius: 8,
                      blurRadius: 5,
                    )
                        : BoxShadow(),
                    selectedIndex == 1
                        ? BoxShadow(
                      color: Colors.purple,
                      offset: Offset(5, 0),
                      spreadRadius: 8,
                      blurRadius: 5,
                    )
                        : BoxShadow(),
                  ],

                ),
                child: Icon(Icons.account_circle),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: selectedIndex == 2 ? Colors.purple.shade200 : Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    selectedIndex == 2
                        ? BoxShadow(
                      color: Colors.blue,
                      offset: Offset(0, 5),
                      spreadRadius: 8,
                      blurRadius: 5,
                    )
                        : BoxShadow(),
                    selectedIndex == 2
                        ? BoxShadow(
                      color: Colors.red,
                      offset: Offset(0, -5),
                      spreadRadius: 8,
                      blurRadius: 3,
                    )
                        : BoxShadow(),
                    selectedIndex == 2
                        ? BoxShadow(
                      color: Colors.green,
                      offset: Offset(-5, 0),
                      spreadRadius: 8,
                      blurRadius: 5,
                    )
                        : BoxShadow(),
                    selectedIndex == 2
                        ? BoxShadow(
                      color: Colors.purple,
                      offset: Offset(5, 0),
                      spreadRadius: 8,
                      blurRadius: 5,
                    )
                        : BoxShadow(),
                  ],
                ),
                child: Icon(Icons.search),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: selectedIndex == 3 ? Colors.purple.shade200 : Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    selectedIndex == 3
                        ? BoxShadow(
                      color: Colors.blue,
                      offset: Offset(0, 5),
                      spreadRadius: 8,
                      blurRadius: 5,
                    )
                        : BoxShadow(),
                    selectedIndex == 3
                        ? BoxShadow(
                      color: Colors.red,
                      offset: Offset(0, -5),
                      spreadRadius: 8,
                      blurRadius: 3,
                    )
                        : BoxShadow(),
                    selectedIndex == 3
                        ? BoxShadow(
                      color: Colors.green,
                      offset: Offset(-5, 0),
                      spreadRadius: 8,
                      blurRadius: 5,
                    )
                        : BoxShadow(),
                    selectedIndex == 3
                        ? BoxShadow(
                      color: Colors.purple,
                      offset: Offset(5, 0),
                      spreadRadius: 8,
                      blurRadius: 5,
                    )
                        : BoxShadow(),
                  ],
                ),
                child: Icon(Icons.contacts),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: selectedIndex == 4 ?  Colors.purple.shade200 : Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    selectedIndex == 4
                        ? BoxShadow(
                      color: Colors.blue,
                      offset: Offset(0, 5),
                      spreadRadius: 8,
                      blurRadius: 5,
                    )
                        : BoxShadow(),
                    selectedIndex == 4
                        ? BoxShadow(
                      color: Colors.red,
                      offset: Offset(0, -5),
                      spreadRadius: 8,
                      blurRadius: 3,
                    )
                        : BoxShadow(),
                    selectedIndex == 4
                        ? BoxShadow(
                      color: Colors.green,
                      offset: Offset(-5, 0),
                      spreadRadius: 8,
                      blurRadius: 5,
                    )
                        : BoxShadow(),
                    selectedIndex == 4
                        ? BoxShadow(
                      color: Colors.purple,
                      offset: Offset(5, 0),
                      spreadRadius: 8,
                      blurRadius: 5,
                    )
                        : BoxShadow(),
                  ],
                ),
                child: Icon(Icons.image),
              ),
            ),
          ],
        ),
      ),

      // bottomNavigationBar: NavigationBar(
      //   selectedIndex: selectedIndex,
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       selectedIndex = index;
      //     });
      //   },
      //   destinations: const <NavigationDestination>[
      //     NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
      //     NavigationDestination(icon: Icon(Icons.business), label: 'Business'),
      //     NavigationDestination(icon: Icon(Icons.school), label: 'School'),
      //   ],
      // ),
    );
  }
}
