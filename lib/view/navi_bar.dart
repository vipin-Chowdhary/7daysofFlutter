import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedIndex = 0;
  List screenList = [
    Center(child: Text("First Screen ")),
    Center(child: Text("Second Screen")),
    Center(child: Text("Third Screen ")),
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
          children: [Icon(Icons.home), Icon(Icons.account_circle)],
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
