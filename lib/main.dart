import 'package:flutter/material.dart';
import 'package:flutter_ui_study_sports/data.dart';
import 'package:flutter_ui_study_sports/utils.dart';

import 'utils.dart';

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
            icon: Icon(
              Icons.arrow_back,
              size: screenAwareSize(20.0, context),
            ),
            onPressed: () {},
          ),
          title: Text(
            "Energy Cloud1",
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
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            ProductScreenTopPart(),
            ProductScreenBottomPart(),
          ],
        ),
      ),
    );
  }
}

class ProductScreenTopPart extends StatefulWidget {
  ProductScreenTopPart({Key key}) : super(key: key);

  @override
  _ProductScreenTopPartState createState() => _ProductScreenTopPartState();
}

class _ProductScreenTopPartState extends State<ProductScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenAwareSize(245.0, context),
      child: Stack(
        children: <Widget>[
          Container(
            child: Image.asset(
              "assets/adidas.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 60.0, right: 35.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: screenAwareSize(50.0, context),
                height: screenAwareSize(50.0, context),
                decoration: BoxDecoration(
                    color: Colors.black26.withOpacity(.6),
                    shape: BoxShape.circle),
                child: Image.asset("assets/360.png"),
              ),
            ),
          ),
          Positioned(
              left: screenAwareSize(18.0, context),
              bottom: screenAwareSize(15.0, context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Rating",
                    style: TextStyle(
                        color: Color(0xff949598),
                        fontSize: screenAwareSize(8.0, context),
                        fontFamily: "Montserrat-SemiBold"),
                  ),
                  SizedBox(
                    height: screenAwareSize(8.9, context),
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 8.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffffe600),
                      ),
                      SizedBox(
                        width: screenAwareSize(5.0, context),
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(color: Color(0xffffe600)),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "(378 People)",
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class ProductScreenBottomPart extends StatefulWidget {
  ProductScreenBottomPart({Key key}) : super(key: key);

  @override
  _ProductScreenBottomPartState createState() =>
      _ProductScreenBottomPartState();
}

class _ProductScreenBottomPartState extends State<ProductScreenBottomPart> {
  bool isExpanded = false;
  int currentSizeIndex = 0;

  void _expand() {
    setState(() {
      isExpanded ? isExpanded = false : isExpanded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: screenAwareSize(18.0, context)),
            child: Text(
              "Product Description",
              style: TextStyle(
                color: Color(0xff949598),
                fontSize: screenAwareSize(10.0, context),
                fontFamily: "Montserrat-SemiBold",
              ),
            ),
          ),
          SizedBox(
            height: screenAwareSize(8.0, context),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(26.0, context),
              right: screenAwareSize(18.0, context),
            ),
            child: AnimatedCrossFade(
              firstChild: Text(
                desc,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenAwareSize(10.0, context),
                  fontFamily: "Montserrar-Medium",
                ),
              ),
              secondChild: Text(
                desc,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenAwareSize(10.0, context),
                  fontFamily: "Montserrat-Medium",
                ),
              ),
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: kThemeAnimationDuration,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(26.0, context),
              bottom: screenAwareSize(10.0, context),
            ),
            child: GestureDetector(
              onTap: _expand,
              child: Text(
                isExpanded ? "less" : "more..",
                style: TextStyle(
                    color: Color(0xfffb382f), fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: screenAwareSize(12.0, context),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(15.0, context),
              right: screenAwareSize(75.0, context),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Size",
                  style: TextStyle(
                    color: Color(0xff949598),
                    fontSize: screenAwareSize(10.0, context),
                    fontFamily: "Montserrat-SemiBold",
                  ),
                ),
                Text(
                  "Quantity",
                  style: TextStyle(
                    color: Color(0xff949598),
                    fontSize: screenAwareSize(10.0, context),
                    fontFamily: "Montserrat-SemiBold",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: screenAwareSize(20.0, context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: screenAwareSize(38.0, context),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: sizeNumlist.map((item) {
                      var index = sizeNumlist.indexOf(item);
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSizeIndex = index;
                          });
                        },
                        child: sizeItem(item, index == currentSizeIndex, context),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget sizeItem(String size, bool isSelected, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 15.0),
    child: Container(
      width: screenAwareSize(30.0, context),
      height: screenAwareSize(30.0, context),
      decoration: BoxDecoration(
          color: isSelected ? Color(0xfffc3930) : Color(0xff525663),
          boxShadow: [
            BoxShadow(
              color: isSelected ? Colors.black.withOpacity(.5) : Colors.black12,
              offset: Offset(0.0, 10.0),
              blurRadius: 10.0,
            )
          ]),
      child: Center(
        child: Text(
          size,
          style: TextStyle(color: Colors.white, fontFamily: "Montserrat-Bold"),
        ),
      ),
    ),
  );
}
