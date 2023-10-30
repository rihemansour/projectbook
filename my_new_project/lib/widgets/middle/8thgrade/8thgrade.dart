import 'package:flutter/material.dart';

class EighthGrade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eighth Grade'),
      ),
      body: Center(
        child: Text(
          'Welcome to Eighth Grade!',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
