/*day 6 about form(wrap whole column into form widget) , 
  form key (create key and put key into form widget), 
  some changes on inkwell in ontap section: we create a method for this and call this in ontap section,
  validator 
*/
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool buttonChanged = false;

  final _formKey = GlobalKey<FormState>();

  //build method for on tap section (day6) 
  movetoHomePage(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      setState(() {
      buttonChanged = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context,MyRoute.homeRoute); //use await before this then put false buttonChanged(day6)
    setState(() {
      buttonChanged = false;
    });
    }
    
  } 

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey, //put form key (day6)
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Username can not empty";
                        }
                        else if(value.length < 3){
                          return "username must be 3 char long";
                        }
                        return null; 
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return "password can not empty";
                        }
                        else if(value.length < 6){
                          return "password must be 6 char long";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap:() => movetoHomePage(context), //put this method here (day6)
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: buttonChanged ? 50 : 150,
                        height: 40,
                        alignment: Alignment.center,
                        child: buttonChanged
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(buttonChanged ? 50 : 8),
                        ),
                      ),
                    ),
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
