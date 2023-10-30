import 'package:flutter/material.dart';

class NinethGrade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nineth Grade'),
      ),
      body: Center(
        child: Text(
          'Welcome to Nineth Grade!',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
