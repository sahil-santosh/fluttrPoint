import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20,),
          Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,),),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  child: Text("Login"),
                  onPressed: (){print("hi login");},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
