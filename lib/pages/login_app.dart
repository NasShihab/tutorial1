import 'package:flutter/material.dart';
import 'package:tutorial1/utils/routes.dart';
// ignore_for_file: prefer_const_constructors
import 'dart:async';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png"),
             SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
             SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter UserName",
                      labelText: "Username",
                    ),
                    onChanged: (value){
                      name = value;
                    },
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(
              height: 40,
            ),
            ElevatedButton(
              child: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: TextButton.styleFrom(
                minimumSize: Size(150, 40),
              ),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
