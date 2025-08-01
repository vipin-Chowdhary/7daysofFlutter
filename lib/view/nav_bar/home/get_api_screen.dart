import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http show get;

class GetApiScreen extends StatefulWidget {
  const GetApiScreen({super.key});

  @override
  State<GetApiScreen> createState() => _GetApiScreenState();
}

class _GetApiScreenState extends State<GetApiScreen> {
  Future<void> getValue() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get Api")),
      body: Obx(
        () => Card(
          margin: EdgeInsets.all(40),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text("fjdhshdf", style: TextStyle(fontSize: 18)),
          ),
        ),
      ),
    );
  }
}

//*************
