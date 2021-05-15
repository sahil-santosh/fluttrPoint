import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utilis/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),          // you can define HomePage() here
      themeMode: ThemeMode
          .light, // akele ye likhne se kuch nhi hoga hume darkTheme bhi dena padega then it works
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/", //when we run app by deafult we saw the HomePage() if WE set initial route ,now we saw the login page when app run
      routes: {
        "/": (context) => LoginPage(),
        MyRoute.homeRoute: (context) => HomePage(), //or you can define HomePage() here otherwise this gave you error
        MyRoute.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
