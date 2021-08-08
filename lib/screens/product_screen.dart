import 'package:flutter/material.dart';
import 'package:intern_weekend_task_6/data/product.dart';
import 'package:intern_weekend_task_6/widgets/color_widget.dart';

class ProductScreen extends StatefulWidget {
  final Product product;
  ProductScreen(this.product);
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var colors = [
    Colors.red,
    Colors.yellow,
    Colors.purple,
    Colors.pink,
    Colors.redAccent,
    Colors.red,
    Colors.yellow,
    Colors.purple,
    Colors.pink,
    Colors.redAccent,
  ];
  RangeValues values = RangeValues(1, 5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
              child: Image.network(
                widget.product.imageURL,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.product.name,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.product.price,
              style: TextStyle(fontSize: 30.0, color: Colors.grey),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("colors", style: TextStyle(color: Colors.grey)),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 7,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colors.length,
            itemBuilder: (BuildContext context, int index) {
              return ColorWidget(this.colors[index]);
            },
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("size", style: TextStyle(color: Colors.grey)),
          ),
        ),
      ]),
    );
  }
}
