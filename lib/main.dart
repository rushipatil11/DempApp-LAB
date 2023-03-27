import 'package:flutter/material.dart';
import 'package:lti/home_page.dart';
import 'package:lti/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lti/routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode:ThemeMode.light ,
      theme:ThemeData(
        primarySwatch:Colors.deepPurple,
        fontFamily:GoogleFonts.lato().fontFamily ,
        primaryTextTheme:GoogleFonts.latoTextTheme(),
      ),
      darkTheme:ThemeData(
        brightness: Brightness.dark
      ),
      //home:HomePage(),
     // initialRoute: "/home",
      routes: {
       "/":(context)=> LoginPage(),
        MyRoutes.homeRoute:(context)=> HomePage(),
        MyRoutes.loginRoute:(context)=> LoginPage(),
      },
    );
  }
}
