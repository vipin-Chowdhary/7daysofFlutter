import 'package:demo_project/utils/app_routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = "";
  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png"),
          SizedBox(height: 20),
          Text(
            "Welcome $name",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Container(
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Container(
                // color: Colors.yellow,
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(height: 40),
                    InkWell(
                      onTap: () async{
                        setState(() {
                          isChanged = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, AppRoutes.homeScreen);
                      },
                      child: AnimatedContainer(
                        height: 50,
                        width: isChanged ? 50 : 150,
                        duration: Duration(seconds: 1),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:
                            isChanged
                                ? Icon(Icons.done, color: Colors.white)
                                : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, AppRoutes.homeScreen);
                    //   },
                    //   child: Text("Save"),
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.deepPurple,
                    //     foregroundColor: Colors.white,
                    //     minimumSize: Size(200, 50),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
