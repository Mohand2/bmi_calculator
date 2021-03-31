import 'package:flutter/material.dart';

class InformationCard extends StatelessWidget {
  final IconData icon;
  final String gender;
  final Color color;

  const InformationCard({this.icon, this.gender, this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.20,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Icon(
                icon,
                size: MediaQuery.of(context).size.height * 0.12,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                gender.toUpperCase(),
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
