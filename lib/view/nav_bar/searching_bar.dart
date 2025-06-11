import 'package:flutter/material.dart';

class SearchingBar extends StatefulWidget {
  const SearchingBar({super.key});

  @override
  State<SearchingBar> createState() => _SearchingBarState();
}

class _SearchingBarState extends State<SearchingBar> {
  final nameController = TextEditingController();

   List newList = [];
  List<String> nameList = <String>[
    "vipin",
    "Silu",
    "vikas",
    "Hari",
    "Kartik",
    "jivan",
    "parkash",
    "akash",
    "aman",
    "sonu",
    "Monu"
  ];
  void searching(var val){
    // newList = nameList
    //     .where(
    //       (e) => e.contains(val),
    // )
    //     .toList();
    newList = nameList.where((e) => e.toLowerCase().contains(val.toString().toLowerCase()),).toList();
  }

  @override
  Widget build(BuildContext context) {
     print(" newList tems = $newList");
    print(" nameList tems = $nameList");
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  elevation: 4,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        searching(value);
                      });

                    },
                    controller: nameController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      focusedBorder:
                      UnderlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                      UnderlineInputBorder(borderSide: BorderSide.none),
                    ),
                  )),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount:(newList.isNotEmpty) ?  newList.length : nameList.length ,
                  itemBuilder: (context, index) {
                    if(newList.isNotEmpty){
                      return Card(
                        elevation: 0,
                        color: Colors.black12,
                        // shadowColor: Colors.red,
                        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text(newList[index],),
                        ),
                      );
                    }
                    else if(newList.isEmpty){

                      return Card(
                        elevation: 0,
                        color: Colors.black12,
                        // shadowColor: Colors.red,
                        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text(nameList[index]),
                        ),
                      );
                    }
                    return Container();
                  },
                ),
              )
            ],
          ),
        ));
  }
}
