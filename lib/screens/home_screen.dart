import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intern_weekend_task_6/data/category.dart';
import 'package:intern_weekend_task_6/data/product.dart';
import 'package:intern_weekend_task_6/screens/product_screen.dart';
import 'package:intern_weekend_task_6/widgets/category_widget.dart';
import 'package:intern_weekend_task_6/widgets/product_widget.dart';
import 'package:intern_weekend_task_6/widgets/section.dart';
import 'product_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var categories = [
    Category(Icon(Icons.arrow_forward), Icon(Icons.person), "Man", "5000"),
    Category(Icon(Icons.arrow_forward), Icon(Icons.person), "Woman", "7000")
  ];
  var products = [
    Product("some name", "15.55",
        "https://c8.alamy.com/comp/2BCTXTB/young-delivery-woman-with-blue-eyes-wearing-cap-standing-over-blue-background-very-happy-and-smiling-looking-far-away-with-hand-over-head-searching-c-2BCTXTB.jpg"),
    Product("some different name", "19.55",
        "https://img.freepik.com/free-photo/young-delivery-girl-blue-uniform-cap-holding-cardboard-box-smiling-cheerfully-pointing-with-index-finger-standing-orange-wall_141793-63722.jpg?size=626&ext=jpg&ga=GA1.2.1386113743.1616803200"),
    Product("some name", "15.55",
        "https://c8.alamy.com/comp/2BCTXTB/young-delivery-woman-with-blue-eyes-wearing-cap-standing-over-blue-background-very-happy-and-smiling-looking-far-away-with-hand-over-head-searching-c-2BCTXTB.jpg"),
    Product("some name", "15.55",
        "https://c8.alamy.com/comp/2BCTXTB/young-delivery-woman-with-blue-eyes-wearing-cap-standing-over-blue-background-very-happy-and-smiling-looking-far-away-with-hand-over-head-searching-c-2BCTXTB.jpg"),
    Product("some name", "15.55",
        "https://c8.alamy.com/comp/2BCTXTB/young-delivery-woman-with-blue-eyes-wearing-cap-standing-over-blue-background-very-happy-and-smiling-looking-far-away-with-hand-over-head-searching-c-2BCTXTB.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                child: Image.network(
                  "https://c8.alamy.com/comp/2BCTXTB/young-delivery-woman-with-blue-eyes-wearing-cap-standing-over-blue-background-very-happy-and-smiling-looking-far-away-with-hand-over-head-searching-c-2BCTXTB.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
          Section("Trending"),
          Container(
            height: MediaQuery.of(context).size.height / 5,
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen(products[index])));
                    },
                    child: ProductWidget(products[index]));
              },
            ),
          ),
          Section("Categories"),
          Container(
            height: MediaQuery.of(context).size.height / 5,
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return CategoryWidget(categories[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
