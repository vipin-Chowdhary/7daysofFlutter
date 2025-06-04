import 'dart:ui';
import 'dart:ui' as ui;

import 'package:demo_project/models/catalog.dart';
import 'package:demo_project/utils/widgets/drawer.dart';
import 'package:demo_project/view/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyData = Catalog.items[0];
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Home Screen")),

      body: Column(
        children: [
          Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            shadowColor: Colors.black,
            surfaceTintColor: Colors.deepPurple,

            child: ListTile(
              leading: Image.network(dummyData.image),
              title: Text(dummyData.name),
              subtitle: Text(dummyData.desc),
              trailing: Text(dummyData.price.toString()),
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(dummyData.image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.red.withOpacity(0.4),
                  BlendMode.colorDodge,
                ),
              ),
            ),
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(dummyData.image),
                fit: BoxFit.cover,
              ),
            ),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ), // Blur intensity
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  child: Text(
                    'Hello, Blur!',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(),));
          }, child: Text("next"))
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
