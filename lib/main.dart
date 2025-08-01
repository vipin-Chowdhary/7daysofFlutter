import 'package:demo_project/utils/aap_route.dart';
import 'package:demo_project/view/home_screen.dart';
import 'package:demo_project/view/login_screen.dart';
import 'package:demo_project/models/catalog.dart';
import 'package:demo_project/utils/app_routes_constant.dart';
import 'package:demo_project/view/nav_bar/navi_bar.dart';
import 'package:demo_project/view/nav_bar/second_nav_bar.dart';
import 'package:demo_project/view/second_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data/user_controller.dart';

void main() {
  Get.put(UserController());
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
      // MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.white, elevation: 0.0),
        // textTheme: Theme.of(context).textTheme,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),

      initialRoute: AppRoutes.loginScreen,
      // routes: {
      //   AppRoutes.homeScreen: (context) => HomeScreen(),
      //   AppRoutes.loginScreen: (context) => LoginScreen(),
      // },
      getPages:getPageRoute,
    );
  }
}
