import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'introduction.dart';
import 'history.dart';
import 'calculation.dart';

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,
          elevation: 0,
          title: Text(
            'About',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Product Sans',
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: new Text(
                  'Intro',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Product Sans',
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: new Text(
                  'History',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Product Sans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: new Text(
                  'Calculation',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Product Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Introduction(),
          History(),
          Calculation(),
        ]),
      ),
    );
  }
}

class CustomAppBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 20);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
