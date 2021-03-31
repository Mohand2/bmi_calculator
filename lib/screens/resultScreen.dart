import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'dart:core';

class ResultScreen extends StatelessWidget {
  final int age;
  final double bmi;
  final String gender;
  final String statusText;
  final Color statusColor;
  final String range;
  final String note;

  ResultScreen(
      {this.age,
      this.bmi,
      this.gender,
      this.statusText,
      this.statusColor,
      this.range,
      this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
              //color: Colors.red[400],
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xffff0066),
          ),
          onPressed: () => Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (_) => InputPage(),
            ),
          ),
        ),
        elevation: 5.0,
      ),
      body: ListView(
        //  mainAxisAlignment: MainAxisAlignment.,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              top: 30,
            ),
            child: Text(
              'Your Result',
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(40),
            height: MediaQuery.of(context).size.height * 0.67,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff1D1F33)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Text(
                    statusText.toUpperCase(),
                    style: TextStyle(
                        color: statusColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Text(
                    '${bmi.toStringAsFixed(1)}',
                    style:
                        TextStyle(fontSize: 120.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '$statusText BMI Range:',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '$range',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                statusText == 'NORMAL'
                    ? Text(
                        'You have a ${statusText.toLowerCase()} body\n weight. $note!',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      )
                    : Text(
                        'You have an ${statusText.toLowerCase()} body\nweight. $note!',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                // ElevatedButton(onPressed: () {}, child: Text('SAVE RESULT'))
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () => Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (_) => InputPage(),
                    ),
                  ),
              child: Text(
                'RE-CALCULATE YOU BMI',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
