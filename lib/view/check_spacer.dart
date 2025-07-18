import 'package:flutter/material.dart';

class CheckSpacer extends StatefulWidget {
  const CheckSpacer({super.key});

  @override
  State<CheckSpacer> createState() => _CheckSpacerState();
}

class _CheckSpacerState extends State<CheckSpacer> {
  List<String> names = ["Vipin", "hari"];
  String? data;
  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("data")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return Text("Item ${names[index]}");
              },
            ),
          ),
          TextFormField(controller: textController),
          Text(data ?? ""),
          Text(names.first),

          ElevatedButton(
            onPressed: () {
              setState(() {
                if(textController.text.isNotEmpty){
                  names.removeAt(int.tryParse(textController.text)!);
                }else{
                  print("Invalid Value in vipin");
                }

                print(names);

                print("${names.length}");
              });
            },
            child: Text("Click"),
          ),
        ],
      ),
    );
  }
}
