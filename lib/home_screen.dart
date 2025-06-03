import 'package:demo_project/models/catalog.dart';
import 'package:demo_project/utils/widgets/drawer.dart';
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
        ],
      ),
      drawer: MyDrawer(),

    );
  }
}
