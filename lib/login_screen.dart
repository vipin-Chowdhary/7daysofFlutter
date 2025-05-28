import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
       color: Colors.white,
      child: Column(children: [Image.asset("assets/images/login.png",),
        SizedBox(height: 20),
        Text("Welcome",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        SizedBox(height: 20),
        Container(
          // color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Container(
              // color: Colors.yellow,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username"
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username"
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: (){
                    print("Hello vipin");
                  }, child: Text("Save"),
                  style: ElevatedButton.styleFrom(fixedSize: Size(400, 50) )
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
