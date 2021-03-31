import 'dart:math';

import 'package:bmi_calculator/screens/resultScreen.dart';
import 'package:bmi_calculator/widgets/info_card.dart';
import 'package:bmi_calculator/widgets/info_card_with_slider.dart';
import 'package:bmi_calculator/widgets/stateful_card.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int age = 20;
  int weight = 60;
  double height = 150;
  double bmi = 0;
  String gender = 'Male';
  Color colorFemale = Color(0xff1d1e33);
  Color colorMale = Color(0xff1d1e33);

  bmiFormula() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ResultScreen(
            age: age,
            bmi: bmi,
            gender: gender,
          ),
        ),
      );
      bmi = weight / pow((height / 100), 2);
      print(bmi);
    });
  }

  setHeight(double val) {
    setState(() {
      height = val;
    });
  }

  incAge() {
    setState(() {
      age += 1;
    });
  }

  decAge() {
    if (age > 0) {
      setState(() {
        age -= 1;
      });
    }
  }

  incWeight() {
    setState(() {
      weight += 1;
    });
  }

  decWieght() {
    if (weight > 0) {
      setState(() {
        weight -= 1;
      });
    }
  }

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
            Icons.sort,
            color: Color(0xffff0066),
          ),
          onPressed: () {},
        ),
        elevation: 5.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      gender = 'Male';
                      colorMale = colorMale == Color(0xff1d1e33)
                          ? Colors.teal
                          : Color(0xff1d1e33);
                      colorFemale = Color(0xff1d1e33);

                      print(gender);
                    });
                  },
                  child: InformationCard(
                    icon: MdiIcons.genderMale,
                    gender: 'Male',
                    color: colorMale,

                    //bmiCalculate: bmiFormula,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      gender = 'Female';
                      colorFemale = colorFemale == Color(0xff1d1e33)
                          ? Colors.teal
                          : Color(0xff1d1e33);
                      colorMale = Color(0xff1d1e33);
                      print(gender);
                    });
                  },
                  child: InformationCard(
                    icon: MdiIcons.genderFemale,
                    gender: 'Female',
                    color: colorFemale,

                    //bmiCalculate: bmiFormula,
                  ),
                ),
              ],
            ),
            InfoCard(
              height: height,
              changeVal: setHeight,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Infos(
                  name: 'Wieght',
                  num: weight,
                  add: incWeight,
                  sub: decWieght,
                ),
                Infos(
                  name: 'Age',
                  num: age,
                  add: incAge,
                  sub: decAge,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: bmiFormula,
              // color: Colors.blue,
              child: Text(
                'CALCULATE YOUR BMI',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
