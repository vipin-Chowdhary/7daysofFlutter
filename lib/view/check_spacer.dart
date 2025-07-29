import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CheckSpacer extends StatefulWidget {
  const CheckSpacer({super.key});

  @override
  State<CheckSpacer> createState() => _CheckSpacerState();
}

class _CheckSpacerState extends State<CheckSpacer> {
  List<Map<String, dynamic>> data = [];

  bool isLoading = false;

  Future<void> fetchData() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
    );
    log('response=>›${response.body}');
    if (response.statusCode == 200) {
      final List<dynamic> rawData = jsonDecode(response.body);

      setState(() {
        data.addAll(rawData.map((e) => Map<String, dynamic>.from(e)).toList());
      });
      print("Data fetched: ${data[1]}");
    } else {
      print("Error: ${response.statusCode}");
    }
  }
  // *********

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // scrolledUnderElevation: 0.0,
        title: Text("Get API Example"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: fetchData, child: Text("Fetch Data")),
          isLoading
              ? CircularProgressIndicator()
              : Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (_, index) {
                    Map<String, dynamic> value = data[index];
                    return ListTile(
                      leading: Text("$index"),
                      title: Text(
                        value['title'],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        value['body'],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  },
                ),
              ),
        ],
      ),
    );
  }
}
