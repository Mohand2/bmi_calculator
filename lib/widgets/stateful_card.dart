import 'package:flutter/material.dart';

class Infos extends StatefulWidget {
  final String name;
  final Function sub;
  final Function add;
  final int num;

  const Infos({this.name, this.add, this.sub, this.num});
  @override
  _InfosState createState() => _InfosState();
}

class _InfosState extends State<Infos> {
  Container buildWidgetWithIcon({IconData icon, Function function}) {
    return Container(
      height: 60.0,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xffff0066),
      ),
      child: IconButton(
        onPressed: function,
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.23,
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color(0xff1d1e33),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.name.toUpperCase(),
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            Text(
              '${widget.num}',
              style: TextStyle(
                  //fontSize: (MediaQuery.of(context).size.width * 0.4) / 3
                  fontSize: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildWidgetWithIcon(icon: Icons.remove, function: widget.sub),
                buildWidgetWithIcon(icon: Icons.add, function: widget.add),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
