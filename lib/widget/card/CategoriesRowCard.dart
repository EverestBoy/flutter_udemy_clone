import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CategoriesRowCard extends StatefulWidget {
  var categoryImage;
  var categoryName;
  CategoriesRowCard(String categoryName, String categoryImage){
    this.categoryImage = categoryImage;
    this.categoryName = categoryName;
  }
  @override
  _CategoriesRowCardState createState() => _CategoriesRowCardState();
}

class _CategoriesRowCardState extends State<CategoriesRowCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // width: 100,

      padding: EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // SizedBox(
          //   height: 80,
          //   width: 100,
          //   child: Image.asset("assets/"+widget.categoryImage, fit: BoxFit.contain,),
          // ),
          Text(widget.categoryName, style: TextStyle(fontSize: 10),)
        ],
      ),
    );
  }
}