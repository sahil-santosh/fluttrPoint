import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int day = 30;
  String name = "on my channel";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",textAlign: TextAlign.center,),
      ),
      drawer: MyDrawer(),
      body: Material(
        child: Center(
          child: Text("welcome to $day days of flutter $name."),
        ),
      ),
    );
  }
}