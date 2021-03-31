import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  final double height;
  final Function changeVal;

  const InfoCard({this.height, this.changeVal});
  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff1d1e33),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Height'.toUpperCase(),
              style: TextStyle(color: Colors.grey, fontSize: 25.0)),
          Text.rich(
            TextSpan(
              //text: '${widget.height}',
              children: <InlineSpan>[
                TextSpan(
                  text: '${widget.height.toInt()}',
                  style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '  cm',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.pink[400],
              inactiveTrackColor: Colors.white60,
              trackShape: RectangularSliderTrackShape(),
              trackHeight: 4.0,
              thumbColor: Color(0xffff0066),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
              overlayColor: Colors.red.withAlpha(40),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
            ),
            child: Slider(
              value: widget.height,
              min: 0,
              max: 200,
              divisions: 200,
              //label: widget.height.round().toString(),
              onChanged: widget.changeVal,
            ),
          ),
        ],
      ),
    );
  }
}
