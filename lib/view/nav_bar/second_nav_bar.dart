import 'package:flutter/material.dart';

class SecondScreenNaviBar extends StatefulWidget {
  const SecondScreenNaviBar({super.key});

  @override
  State<SecondScreenNaviBar> createState() => _SecondScreenNaviBarState();
}

class _SecondScreenNaviBarState extends State<SecondScreenNaviBar> {
  SelectedItem? item;
  final List<SelectedItem> listName = <SelectedItem>[
    SelectedItem(name: "vipin", isSelected: false),
    SelectedItem(name: "vikas", isSelected: false),
    SelectedItem(name: "hari", isSelected: false),
    SelectedItem(name: "salmaan", isSelected: false),
    SelectedItem(name: "shiva", isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: listName.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          listName[index].isSelected = !listName[index].isSelected;
                          print("isSelected $index = ${listName[index].isSelected}");
                          print("index number = $index");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        color: listName[index].isSelected ? Colors.green[100] : Colors.white60,
                        child: Card(elevation: 8,color: Colors.grey[50],


                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                listName[index].name,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            )),
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}

class SelectedItem {
  final String name;
  bool isSelected;
  SelectedItem({required this.name, required this.isSelected});
}
