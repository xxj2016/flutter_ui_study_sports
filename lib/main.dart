import 'package:flutter/material.dart';
import 'package:flutter_ui_study_sports/utils.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff696d77), Color(0xff292c36)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.clamp)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, size: screenAwareSize(20.0, context),),
            onPressed: () {},
          ),
          title: Text(
            "Energy Cloud",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenAwareSize(18.0, context),
              // fontFamily: "",
            ),
          ),
          centerTitle: true,  
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                size: screenAwareSize(20.0, context),
                color: Colors.white,
              ),
              onPressed: (){},
            )
          ],
        ),
        body: Container(),
      ),
    );
  }
}
