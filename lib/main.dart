import 'package:demo_project/home_screen.dart';
import 'package:demo_project/login_screen.dart';
import 'package:demo_project/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.deepPurple,
       fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: AppRoutes.loginScreen,
      routes: {
        AppRoutes.homeScreen : (context) => HomeScreen(),
        AppRoutes.loginScreen : (context) => LoginScreen(),

      },

    );
  }
}
