import 'package:flutter/material.dart';
import 'package:flutter_catalog/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = ""; //when we type username , we want to show that ahead Welcome
  bool buttonChanged = false; //use thid boolean in animation
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              "Welcome $name", //put name string ahead welcome text
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
                    onChanged: (value) {
                      //name stirng put equal to value
                      name = value;
                      setState(
                          () {}); //this state will work only statefull widget
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  //login button animated part
                  //first we have to comment out elevated button and use a container for this button
                  //when container completed we rape it into inkwell widget otherwise its not tapebell
                  //for animation we add Animated word before containor and give duration
                  InkWell(
                    onTap: () async {
                      setState(() {
                        buttonChanged = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoute.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: buttonChanged ? 50 : 150,
                      height: 40,
                      alignment: Alignment.center,
                      //color: Colors.deepPurple, //if you use box decoration so you do not define color here
                      child: buttonChanged ? Icon( Icons.done, color: Colors.white,) : Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                      decoration: BoxDecoration(
                        color: Colors
                            .deepPurple, //if you use box decoration so you do not define color in container
                        borderRadius:
                            BorderRadius.circular(buttonChanged ? 50 : 8),
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //       minimumSize: Size(150, 30), primary: Colors.purple),
                  //   child: Text("Login"),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoute.homeRoute);
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
