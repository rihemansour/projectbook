import 'package:flutter/material.dart';

class FifthGrade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fifth Grade'),
      ),
      body: Center(
        child: Text(
          'Welcome to Fifth Grade!',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
