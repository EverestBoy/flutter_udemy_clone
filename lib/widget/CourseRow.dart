import 'package:VideoPlayer/Activity/CourseOverview.dart';
import 'package:VideoPlayer/widget/card/CourseRowCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class CourseRow extends StatefulWidget {
  @override
  _CourseRowState createState() => _CourseRowState();
}

class _CourseRowState extends State<CourseRow> {
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
            child: Text("Top Courses in Neural Networks", style: new TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                MaterialButton(
                  padding: EdgeInsets.all(0),
                  splashColor: Colors.red[100],
                  onPressed: (){
                    Navigator.push(context, CupertinoPageRoute(
                      builder: (context) => CourseOverview(),
                    ));
                  },
                  child: CourseRowCard(width, "https://i.udemycdn.com/course/240x135/1151632_de9b.jpg"),
                ),
                MaterialButton(
                  splashColor: Colors.red[50],
                  onPressed: (){
                    print("ello");
                  },
                  child: CourseRowCard(width,"https://i.udemycdn.com/course/480x270/1219332_bdd7.jpg"),
                ),
                MaterialButton(
                  splashColor: Colors.red[50],
                  onPressed: (){
                    print("ello");
                  },
                  child: CourseRowCard(width,"https://i.udemycdn.com/course/240x135/1643044_e281.jpg"),
                ),
                
                
                
                SizedBox(width: 16,),
                MaterialButton(
                  splashColor: Colors.red[50],
                  onPressed: (){
                    print("ello");
                  },
                  minWidth: width*0.4,
                  height: width*0.5,
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