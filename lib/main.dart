import 'package:flutter/material.dart';
import 'package:tutorial1/home_page.dart';
import 'package:tutorial1/login_app.dart';

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
      ),
      routes: {
        "/" : (context) => LoginPage(),
        "/home" : (context) => HomePage(),
        "/" : (context) => LoginPage(),
      },
    );
  }
}
