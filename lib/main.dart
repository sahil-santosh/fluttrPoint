import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utilis/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),          // you can define HomePage() here or....
      themeMode: ThemeMode.light, // akele ye likhne se kuch nhi hoga hume darkTheme bhi dena padega then it works
      // theme: ThemeData(
      //   primaryColor: Colors.deepPurple,
      //   fontFamily: GoogleFonts.lato().fontFamily,
      //   appBarTheme: AppBarTheme(
      //     color: Colors.white,
      //     elevation: 0.0,
      //     iconTheme: IconThemeData(color: Colors.black),
      //     textTheme: Theme.of(context).textTheme,
      //   ),
      // ),
      theme: MyTheme.lightTheme(context),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoute.homeRoute, //when we run app by deafult we saw the HomePage() if WE set initial route ,now we saw the login page when app run
      routes: {
        "/": (context) => LoginPage(),
        MyRoute.homeRoute: (context) => HomePage(), //or you can define HomePage() here otherwise this gave you error
        MyRoute.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
