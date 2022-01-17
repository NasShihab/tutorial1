import 'package:flutter/material.dart';
import 'package:tutorial1/pages/home_page.dart';
import 'pages/login_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';
// ignore_for_file: prefer_const_constructors
import 'dart:async';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: HomePage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
      },
    );
  }
}
