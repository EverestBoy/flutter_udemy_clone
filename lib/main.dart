import 'package:VideoPlayer/Activity/FeatureActivity.dart';
import 'package:VideoPlayer/VideoPlayerWidget.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,

        // body: SingleChildScrollView(
        //   child: Column(
        //     children: <Widget>[
        //       CustomScrollView(
        //         slivers: <Widget>[
        //           SliverAppBar(
        //             pinned: true,
        //             expandedHeight: 200,
        //             // flexibleSpace: new FlexibleSpaceBar(
        //             //   title: Text("Test"),
        //             // ),
        //           ),
        //           // Text("Heo")
        //         ],
        //       ),
        //       FeatureActivity()
        //     ],
        //   ),
        // )

        // appBar: AppBar(
        //   title: Text("Test"),
        // ),
        
        
       
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            FeatureActivity(),
            Text("text 2"),
            Text("text 3"),


          ],
        ),
         bottomNavigationBar: Container(
           child: new TabBar(
            tabs: <Widget>[
                Tab(icon: Icon(Icons.account_balance),),
                Tab(icon: Icon(Icons.dashboard),),
                Tab(icon: Icon(Icons.person),)
              ],
              labelColor: Colors.red,
              unselectedLabelColor: Colors.red[200],
              indicatorSize: TabBarIndicatorSize.label,


          ),
         )
      ),
    );
      
      
      
      
      
      // Center(
      //   child: GestureDetector(
      //     // onTap: () {
      //     //   Navigator.push(context, MaterialPageRoute(
      //     //     builder: (context) => VideoPlayerWidget(),
      //     //   ));
      //     // },
      //     child: VideoPlayerWidget(
      //       videoPlayerController: VideoPlayerController.network(
      //         'https://stockflutter-youtube.s3.amazonaws.com/FlutterNetflixUIRedesign/featured/disney/trailer.mp4 ',
      //       ),
      //     ),
      //   )  
      // ),
      
    
  }
}