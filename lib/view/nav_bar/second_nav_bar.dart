import 'package:flutter/material.dart';

class SecondScreenNaviBar extends StatelessWidget {
  const SecondScreenNaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(appBar: AppBar(),
            drawer: Drawer(),
            body: Center(child: Text("Second Screen")));
  }
}
