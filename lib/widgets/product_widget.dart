import 'package:flutter/material.dart';
import 'package:intern_weekend_task_6/data/product.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  ProductWidget(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 10,
              child: Image.network(
                this.product.imageURL,
              ),
            ),
          ),
          Text(this.product.name),
          Text(this.product.price)
        ],
      ),
    );
  }
}
