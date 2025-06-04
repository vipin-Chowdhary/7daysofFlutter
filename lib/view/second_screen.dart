import 'package:demo_project/view/dialog_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final controller = TextEditingController();
  List cardList = [
    "Vipin ",
    "Vipin Chowdhary",
    "Vikas kumar",
    "Vishal",
    "Harikrishan",
  ];
  void addNameInList() {
    setState(() {
      if(controller.text.isNotEmpty){
        cardList.add(controller.text);
      }

      controller.clear();
    });

    Navigator.pop(context);
  }
  @override
  void dispose() {
    controller.clear();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[400],
        elevation: 3,
        centerTitle: true,
        title: Text("Second Screen"),
      ),
      body: ListView.builder(
        itemCount: cardList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            surfaceTintColor: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(cardList[index]),
                  IconButton(padding: EdgeInsets.zero,
                    onPressed: (){
                    setState(() {
                      cardList.removeAt(index);
                    });

                    },
                    icon: Icon(Icons.delete),)
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return DialogScreen(
                textController: controller,
                onPressed: addNameInList,
              );
            },
          );
        },
        child: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
