import 'dart:math';

import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FourthRoute extends StatefulWidget {
  @override
  _FourthRouteState createState() => _FourthRouteState();
}

class _FourthRouteState extends State<FourthRoute> {
  Widget _buildBox({int points, Color color, Color textColor = Colors.white}) {
    return Expanded(
      flex: points,
      child: Container(
        constraints: BoxConstraints.expand(),
        color: color,
        child: Center(
          child: Text(
            '$points',
            style: TextStyle(fontSize: 32.0, color: textColor),
          ),
        ),
      ),
    );
  }

  Size _goldenRatio(BoxConstraints constraints) {
    double ratio = 13.0 / 8.0;
    if (constraints.maxHeight / constraints.maxWidth > ratio) {
      double height = constraints.maxWidth * ratio;
      return Size(constraints.maxWidth, height);
    } else {
      double width = constraints.maxHeight / ratio;
      return Size(width, constraints.maxHeight);
    }
  }

  Widget _centeredLayout({Widget child}) {
    return LayoutBuilder(builder: (content, constraints) {
      Size size = _goldenRatio(constraints);
      return Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: size.width,
            maxHeight: size.height,
          ),
          child: child,
        ),
      );
    });
  }

  Widget _buildContent() {
    var listColours = [
      Colors.red,
      Colors.green,
      Colors.orange,
      Colors.yellow,
      Colors.purple,
      Colors.blue,
      Colors.black,
      Colors.indigo,
      Colors.brown,
      Colors.pink
    ];
    final _random = new Random();

    return _centeredLayout(
      child: Column(
        children: [
          _buildBox(
              points: 8,
              color: listColours[_random.nextInt(listColours.length)]),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                _buildBox(
                    points: 5,
                    color: listColours[_random.nextInt(listColours.length)]),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  _buildBox(
                                      points: 1,
                                      color: listColours[
                                          _random.nextInt(listColours.length)]),
                                  _buildBox(
                                      points: 1,
                                      color: listColours[
                                          _random.nextInt(listColours.length)]),
                                ],
                              ),
                            ),
                            _buildBox(
                                points: 2,
                                color: listColours[
                                    _random.nextInt(listColours.length)]),
                          ],
                        ),
                      ),
                      _buildBox(
                          points: 3,
                          color:
                              listColours[_random.nextInt(listColours.length)]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: ClipShadow(
          clipper: CustomAppBar(),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 10,
                offset: Offset(0.0, 1.0)),
          ],
          child: Container(
            color: Colors.teal,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Extras",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Product Sans',
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )
              ],
            )),
          ),
        ),
        preferredSize: Size.fromHeight(95),
      ),
      body: Container(
        child: _buildContent(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: () {
            (context as Element).reassemble();
          }),
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
