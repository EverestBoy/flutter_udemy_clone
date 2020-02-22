import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class CourseRowCardFat extends StatefulWidget {
  var width;
  var image;
  CourseRowCardFat(double width, String image){
    this.width = width;
    this.image = image;
  }

  @override
  _CourseRowCardFatState createState() => _CourseRowCardFatState();
}

class _CourseRowCardFatState extends State<CourseRowCardFat> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width*0.6,
        height: widget.width*0.6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 8.0, 0.0, 0.0),
              height: widget.width*0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: NetworkImage(widget.image)
                )
              ),
            ),
            SizedBox(height: 8,),
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 8.0, 0.0, 0.0),
              child: Text("Data Science: Deep Learning in Python")
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 4.0, 0.0, 0.0),
              child: Text("INR Rs. 700", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)
            )
            
          ],
        ),
      );
  }
}