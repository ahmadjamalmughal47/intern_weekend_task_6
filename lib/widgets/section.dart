import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String heading;
  Section(this.heading);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "show all",
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }
}
