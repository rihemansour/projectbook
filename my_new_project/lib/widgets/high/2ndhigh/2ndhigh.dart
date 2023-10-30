import 'package:flutter/material.dart';

class SecondGradeHigh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Grade'),
      ),
      body: Center(
        child: Text(
          'Welcome to Second Grade!',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
