import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final int days = 30;
  final String name = 'Nas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catelog App"),
      ),
      drawer: const Drawer(),
      body: Center(
        child: Container(
          child: Text('Welcome $days People from $name'),
        ),
      ),
    );
  }
}
