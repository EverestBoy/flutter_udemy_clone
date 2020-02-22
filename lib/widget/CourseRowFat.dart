import 'package:VideoPlayer/widget/card/CourseRowCard.dart';
import 'package:VideoPlayer/widget/card/CourseRowCardFat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class CourseRowFat extends StatefulWidget {
  @override
  _CourseRowState createState() => _CourseRowState();
}

class _CourseRowState extends State<CourseRowFat> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    print("Wdith "+width.toString());
    return Container(
      padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(16.0,0.0, 0,0.0),
            child: Text("Top Courses in This Month", style: new TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CourseRowCardFat(width, "https://i.udemycdn.com/course/240x135/1462428_639f_7.jpg"),
                CourseRowCardFat(width, "https://i.udemycdn.com/course/240x135/1778502_f4b9_11.jpg"),
                CourseRowCardFat(width,"https://i.udemycdn.com/course/240x135/1463348_52a4_2.jpg"),
                SizedBox(width: 16,),
                MaterialButton(
                  splashColor: Colors.red[100],
                  onPressed: (){
                    print("ello");
                  },
                  minWidth: width*0.4,
                  height: width*0.6,
                  child: Text("See All", style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w500),),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}