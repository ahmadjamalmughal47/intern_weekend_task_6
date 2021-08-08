import 'package:flutter/material.dart';

class ColorWidget extends StatefulWidget {
  final Color color;
  ColorWidget(this.color);
  @override
  _ColorWidgetState createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<ColorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 20,
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(8.0),
        decoration:
            BoxDecoration(color: this.widget.color, shape: BoxShape.circle));
  }
}
