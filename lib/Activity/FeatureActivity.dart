import 'package:VideoPlayer/widget/CourseRow.dart';
import 'package:VideoPlayer/widget/CourseRowFat.dart';
import 'package:VideoPlayer/widget/card/CourseRowCard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FeatureActivity extends StatefulWidget {
  @override
  _FeatureActivityState createState() => _FeatureActivityState();
}

class _FeatureActivityState extends State<FeatureActivity> {
  int _current = 0;
  List imgList = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(6),
            child: Icon(Icons.shopping_cart, color: Colors.white,),
          )
        ],
      ),
      
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                width: double.infinity,
                child: GestureDetector(
                  onTap: () {
                    print("Index is "+_current.toString());
                  },
                  child: Stack(
                    children: <Widget>[
                      CarouselSlider(
                        height: 200.0,
                        initialPage: 0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        reverse: false,
                        enableInfiniteScroll: true,
                        autoPlayInterval: Duration(seconds: 5),
                        autoPlayAnimationDuration: Duration(milliseconds: 2000),
                        pauseAutoPlayOnTouch: Duration(seconds: 10),
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index) {
                          setState(() {
                            _current = index;
                          });
                        },
                        items: imgList.map((imgUrl) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                ),
                                child: Image.network(
                                  imgUrl,
                                  fit: BoxFit.fill,
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      Positioned(
                        top: 150.0,
                        left: 0.0,
                        right: 0.0,
                        bottom: 0.0,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imgList.map((element) {
                            // get index
                            var index = imgList.indexOf(element);
                            return Container(
                              alignment: Alignment.bottomCenter,
                              width: 8.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == index ? Colors.white: Colors.white54
                              ),
                            );
                          }).toList()
                          
                        )
                      )
                    ],
                  )
                )
              ),
              CourseRowFat(),
              CourseRow(),
              CourseRowFat(),
              CourseRow(),

            ],
          ),
        )
      )
    );
  }
}