import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {

  final TextEditingController ? textController;


 final VoidCallback ? onPressed;
  const DialogScreen({super.key,this.textController,  this.onPressed});


  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(controller:textController ,
                decoration: InputDecoration(labelText: "Enter Name"),),
              Padding(
                padding: const EdgeInsets.only(top:20 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: onPressed, child: Text("Save")),
                    SizedBox(width: 10),
                    ElevatedButton(onPressed: (){
                      textController!.clear();
                      Navigator.pop(context);

                    }, child: Text("Cancel")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
