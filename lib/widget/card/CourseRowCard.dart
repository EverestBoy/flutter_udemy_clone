import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class CourseRowCard extends StatefulWidget {
  var width;
  var image;
  CourseRowCard(double width, String image){
    this.width = width;
    this.image = image;
  }

  @override
  _CourseRowCardState createState() => _CourseRowCardState();
}

class _CourseRowCardState extends State<CourseRowCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width*0.4,
        height: widget.width*0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 8.0, 0.0, 0.0),
              height: widget.width*0.25,
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