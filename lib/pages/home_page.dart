import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
import 'dart:async';

class HomePage extends StatelessWidget {

  final int days = 30;
  final String name = 'Nas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text('Welcome $days People from $name'),
        ),
      ),
    );
  }
}
