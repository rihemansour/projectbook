import 'package:flutter/material.dart';

class FirstGrade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Grade'),
      ),
      body: Center(
        child: Text(
          'Welcome to First Grade!',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
