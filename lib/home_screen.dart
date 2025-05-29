import 'package:demo_project/models/catalog.dart';
import 'package:demo_project/utils/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, });


  @override
  Widget build(BuildContext context) {
    final dummyData =Catalog.items[0];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: Text("Home Screen"),),
      body: Column(
        children: [
          Card(
            child: ListTile(leading: Image.network(dummyData.image),
            title: Text(dummyData.name),
              subtitle: Text(dummyData.desc),
              trailing:  Text(dummyData.price.toString()),
            ),
          ),

        ],
      ),
       drawer: MyDrawer(),
floatingActionButton: FloatingActionButton(onPressed: (){},),
    );
  }
}
