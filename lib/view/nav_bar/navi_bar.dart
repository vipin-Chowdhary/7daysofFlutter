import 'package:demo_project/view/nav_bar/first_nav_bar.dart';
import 'package:demo_project/view/nav_bar/second_nav_bar.dart';
import 'package:demo_project/view/second_screen.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedIndex = 0;
  List screenList = [
    FirstScreenNavbar(),
   SecondScreenNaviBar(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],

      bottomNavigationBar: Container(
        color: Colors.blueGrey,
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
              child: Icon(Icons.home),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Icon(Icons.account_circle),
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
