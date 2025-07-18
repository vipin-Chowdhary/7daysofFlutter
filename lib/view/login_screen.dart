import 'package:demo_project/utils/app_routes_constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = "";
  bool isChanged = false;
  final formKey = GlobalKey<FormState>();

  moveToHome() async {
   if(formKey.currentState!.validate()){
     setState(() {
       isChanged = true;
     });
     await Future.delayed(Duration(seconds: 1));
     await Navigator.pushNamed(context, AppRoutes.homeScreen);
     setState(() {
       isChanged = false;
     });
   }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      FocusScope.of(context).unfocus();
    },
      child: Material(
        color: Colors.white,
        child: Form(
          key: formKey,
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
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 32,
                  ),
                  child: Container(
                    // color: Colors.yellow,
                    child: Column(
                      children: [
                        TextFormField(
                           textInputAction: TextInputAction.next,
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          },
                          validator: (value) {
                            if ( value == null ||value.isEmpty) {
                              return "Username can not be empty";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Enter username",
                            labelText: "Username",
                          ),
                        ),
                        TextFormField(
                          validator: (value) {
                            if ( value == null ||value.isEmpty) {
                              return "Password can not be empty";
                            } else if( value.length < 6){
                              return "Password length should be  atleast 6";
                            }
                            return null;
                          },
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
                            borderRadius: BorderRadius.circular(30),
                            onTap: moveToHome,
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

                        // ========
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
