import 'package:bmi_calculator/widgets/info_card.dart';
import 'package:bmi_calculator/widgets/info_card_with_slider.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.sort),
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
                InformationCard(),
                InformationCard(),
              ],
            ),
            InfoCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InformationCard(),
                InformationCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
