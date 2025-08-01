import 'package:demo_project/models/login_model.dart';
import 'package:demo_project/utils/app_routes_constant.dart';
import 'package:demo_project/view/demo_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widgets/snackbar.dart';
import '../../data/user_controller.dart';

class FirstScreenNavbar extends StatefulWidget {
  const FirstScreenNavbar({super.key});

  @override
  State<FirstScreenNavbar> createState() => _FirstScreenNavbarState();
}

class _FirstScreenNavbarState extends State<FirstScreenNavbar> {
  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Builder(
              builder: (context) {
                return ListTile(
                  onTap: () {
                    Scaffold.of(context).closeDrawer();
                  },

                  title: Text('close Drawer'),
                );
              },
            ),
            ListTile(title: Text('title')),
            ListTile(title: Text('title')),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            // Row(children: [TextField(),TextField()],),
            Material(
              color: Colors.red,
              animationDuration: Duration(seconds: 8),
              shadowColor: Colors.pink,
              borderRadius: BorderRadius.circular(50),
              surfaceTintColor: Colors.yellow,
              clipBehavior: Clip.antiAlias,

              child: InkWell(
                onTap: () {
                  dialogBox();
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  // color: Colors.blue,
                  child: Text(
                    'dialogBox',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            // *************
            Row(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.getApi);
                    print("get screen api ");
                  },
                  child: Text('Get Api'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.calenderScreen);
                  },
                  child: Text('Calender'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.imageScreen);
                  },
                  child: Text('image'),
                ),
              ],
            ),

            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                bottomSheetForDemo();
              },
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 3),
                      color: Colors.green.shade200,
                      blurRadius: 10,
                      spreadRadius: 3,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Text('show BottomSheet'),
              ),
            ),
            SizedBox(height: 20),
            InkResponse(
              onTap: () {
                print("Tapped");
              },
              radius: 30,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Icon(Icons.touch_app),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                snackBar();
              },
              child: Text('Show SnackBar'),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.demoOneScreen);
                  },
                  child: Text('Demo One Screen'),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.checkSpacer);
                  },
                  child: Text('Check Spacer'),
                ),
              ],
            ),
            SizedBox(height: 20),

            Obx(() {
              final data = userController.loginModel.value;
              return  Card(
                elevation: 4,margin: EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  title: Text(data.name ?? "no name"),
                  subtitle: Text(data.password ?? "no password"),
                ),
              );
            }

            ),
          ],
        ),
      ),
    );
  }
}
