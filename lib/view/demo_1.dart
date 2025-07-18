import 'dart:math';


import 'dart:math' as math;
import 'package:flutter/material.dart';

class DemoOneScreen extends StatefulWidget {
  const DemoOneScreen({super.key});

  @override
  State<DemoOneScreen> createState() => _DemoOneScreenState();
}

class _DemoOneScreenState extends State<DemoOneScreen> {
  List colors = [Colors.red, Colors.green, Colors.yellow ,Colors.blue];
  Random random = new Random();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [

            SizedBox(height: 100,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    color: Color.fromARGB(
                      255,
                      math.Random().nextInt(256),
                      math.Random().nextInt(256),
                      math.Random().nextInt(256),
                    ),
                    child: Text('Random Color'),
                  );
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(color: Colors.red, height: 30, width: 30),
                Container(color: Colors.green, height: 30, width: 30),
                Container(color: Colors.yellow, height: 30, width: 30),
                Container(color: Colors.blue, height: 30, width: 30),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    print("object");
                  },
                  child: Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
