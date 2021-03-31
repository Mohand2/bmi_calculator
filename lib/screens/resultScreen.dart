import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int age;
  final double bmi;
  final String gender;

  const ResultScreen({this.age, this.bmi, this.gender});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('$gender'),
      ),
    );
  }
}
