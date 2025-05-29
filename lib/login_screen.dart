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
  final formkey = GlobalKey();

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
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        validator: (value) {
                          // if (value.isEmpty) {
                          //   return "Username can not be empty";
                          // }
                          // return null;
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
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(30),
                        child: InkWell(
                          onTap: () async {
                            setState(() {
                              isChanged = true;
                            });
                            await Future.delayed(Duration(seconds: 1));
                            await Navigator.pushNamed(
                              context,
                              AppRoutes.homeScreen,
                            );
                            setState(() {
                              isChanged = false;
                            });
                          },
                          child: AnimatedContainer(
                            height: 50,
                            width: isChanged ? 50 : 150,
                            duration: Duration(seconds: 1),
                            alignment: Alignment.center,

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
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
