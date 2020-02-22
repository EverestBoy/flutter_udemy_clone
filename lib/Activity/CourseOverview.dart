import 'dart:ui';

import 'package:flutter/material.dart';

class CourseOverview extends StatefulWidget {
  @override
  _CourseOverviewState createState() => _CourseOverviewState();
}

class _CourseOverviewState extends State<CourseOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: <Widget>[
          Icon(
            Icons.share,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                          child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.darken),
                              image: new NetworkImage(
                                  "https://i.udemycdn.com/course/480x270/1219332_bdd7.jpg"),
                            )),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 8),
                            Stack(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "Deep Learning: Convolutional Neural Networks in Python",
                                          style: TextStyle(
                                              fontSize: 32,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400)),
                                      Text(
                                          "Compuer Vision and Data Science and Machine Learning combined! In Theano and Tensorflow",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400)),
                                      // Text("Comcombined! In Theano and Tensorflow",
                                      // style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400)),
                                      // Text("Compbined! In Theano and Tensorflow",
                                      // style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400)),
                                      // Text("Comp combined! In Theano and Tensorflow",
                                      // style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400)),

                                      SizedBox(
                                        height: 16,
                                      ),
                                      
                                      Wrap(
                                        alignment: WrapAlignment.start,
                                        runSpacing: 8.0,
                                        children: <Widget>[
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 8, 0),
                                            padding:
                                                EdgeInsets.fromLTRB(8, 4, 8, 4),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.white,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                                Text("\t4.6",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600))
                                              ],
                                            ),
                                          ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 8, 0),
                                            padding:
                                                EdgeInsets.fromLTRB(8, 4, 8, 4),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.white,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.person,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                                Text("\t31,711 Enrolled",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600))
                                              ],
                                            ),
                                          ),
                                            ],
                                          ),
                                          
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 8, 0),
                                            padding:
                                                EdgeInsets.fromLTRB(8, 4, 8, 4),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.white,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.play_arrow,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                                Text("\t39 hours",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600))
                                              ],
                                            ),
                                          ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 8, 0),
                                            padding:
                                                EdgeInsets.fromLTRB(8, 4, 8, 4),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.white54,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Text("Created by Jason Fedin",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12))
                                              ],
                                            ),
                                          ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 8, 0),
                                            padding:
                                                EdgeInsets.fromLTRB(8, 4, 8, 4),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.white54,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Text("Updated 01/2019",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12))
                                              ],
                                            ),
                                          ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 8, 0),
                                            padding:
                                                EdgeInsets.fromLTRB(8, 4, 8, 4),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.white54,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Text("CC, English/German",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12))
                                              ],
                                            ),
                                          ),
                                            ],
                                          )
                                        ],
                                      ),

                                      SizedBox(
                                        height: 80,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                      SizedBox(
                        height: 80,
                      )
                    ],
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: EdgeInsets.fromLTRB(56, 0, 56, 0),
                          height: 160,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i.udemycdn.com/course/480x270/1219332_bdd7.jpg"),
                                    fit: BoxFit.cover)),
                            child: Center(
                                child: Icon(
                              Icons.play_arrow,
                              size: 100,
                              color: Colors.white,
                            )),
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
