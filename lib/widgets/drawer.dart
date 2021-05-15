             
             //Day 7

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl = "https://images.unsplash.com/photo-1557862921-37829c790f19?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Sahil"),
                accountEmail: Text("sahil@gmail.com"),
                // currentAccountPicture: Image.network(imageUrl),
                //OR
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            Divider(color: Colors.white,),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            ),
            Divider(color: Colors.white,),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Profile",style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            ),
            Divider(color: Colors.white,),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text("Email",style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            ),
            Divider(color: Colors.white,),
          ],
        ),
      ),
    );
  }
}
