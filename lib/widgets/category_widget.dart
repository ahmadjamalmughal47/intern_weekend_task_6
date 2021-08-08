import 'package:flutter/material.dart';
import 'package:intern_weekend_task_6/data/category.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;
  CategoryWidget(this.category);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      child: ListTile(
        trailing: this.category.trailing,
        leading: this.category.leading,
        title: Text(this.category.title),
        subtitle: Text(this.category.itemsRemaining + "items remaining"),
      ),
    );
  }
}
