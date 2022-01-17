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
  bool changeButton = false;

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
            //Welcome
            Text(
              "Welcome",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$name",
              style: TextStyle(
                fontSize: 20,
              ),
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
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

            InkWell(
              onTap: (){
                setState(() {
                  changeButton = true;
                });
                //Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 50,
                width: changeButton? 50 : 150,
                alignment: Alignment.center,
                child: changeButton? Icon(Icons.done, color: Colors.white,) : Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 20, color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton? 50 : 8),
                ),
              ),
            )

            // ElevatedButton(
            //   child: Text(
            //     "Login",
            //     style: TextStyle(fontWeight: FontWeight.bold),
            //   ),
            //   style: TextButton.styleFrom(
            //     minimumSize: Size(150, 40),
            //   ),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
