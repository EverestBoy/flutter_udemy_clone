import 'package:VideoPlayer/widget/card/CategoriesRowCard.dart';
import 'package:VideoPlayer/widget/card/CourseRowCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class CategoriesRow extends StatefulWidget {
  @override
  _CategoriesRowState createState() => _CategoriesRowState();
}

class _CategoriesRowState extends State<CategoriesRow> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoriesRowCard("Fashion","fashion.jpg"),
                CategoriesRowCard("Laptop","loaptop.png"),
                CategoriesRowCard("Grocery","grocery.png"),
                CategoriesRowCard("Toys","toys.png"),
                CategoriesRowCard("Home","home.png"),
                CategoriesRowCard("TV","tv.png"),
                
              ],
            ),
          );
  }
}