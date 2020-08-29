import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class FifthRoute extends StatefulWidget {
  @override
  _FifthRouteState createState() => _FifthRouteState();
}

class _FifthRouteState extends State<FifthRoute> {
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
        preferredSize: Size.fromHeight(100),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.10,
                        padding: EdgeInsets.only(left: 10),
                        child: Row(children: [
                          Text(
                            'Learn through Videos',
                            style: TextStyle(
                              color: Colors.red,
                              fontFamily: 'Product Sans',
                              fontSize: 30,
                            ),
                          )
                        ])),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                'Click on the links to view',
                style: TextStyle(
                  color: Colors.purple,
                  fontFamily: 'Product Sans',
                  fontSize: 20,
                ),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.10,
                        padding: EdgeInsets.only(left: 10),
                        child: Row(children: [
                          Text(
                            'What is Golden Ratio ?',
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Product Sans',
                              fontSize: 20,
                            ),
                          )
                        ])),
                  ],
                )),
            Image.asset(
              'assets/Imges/11.png',
              height: MediaQuery.of(context).size.height * 0.30,
            ),
            InkWell(
              child: Text(
                "https://www.youtube.com/watch?v=6nSfJEDZ_WM",
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'Product Sans',
                  fontSize: 15,
                ),
              ),
              onTap: () {
                openurl();
              },
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.10,
                        padding: EdgeInsets.only(left: 10),
                        child: Row(children: [
                          Text(
                            'What is 1.618034 So Important ?',
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Product Sans',
                              fontSize: 20,
                            ),
                          )
                        ])),
                  ],
                )),
            Image.asset(
              'assets/Imges/12.png',
              height: MediaQuery.of(context).size.height * 0.30,
            ),
            InkWell(
              child: Text(
                "https://www.youtube.com/watch?v=keLN89CWZ-A",
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'Product Sans',
                  fontSize: 15,
                ),
              ),
              onTap: () {
                openurl1();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'The Golden Ratio: Introduction to Euclid Geometry',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Product Sans',
                  fontSize: 20,
                ),
              ),
            ),
            Image.asset(
              'assets/Imges/13.png',
              height: MediaQuery.of(context).size.height * 0.30,
            ),
            InkWell(
              child: Text(
                "https://youtu.be/5zosU6XTgSY",
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'Product Sans',
                  fontSize: 15,
                ),
              ),
              onTap: () {
                openurl2();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'How to design a logo With Golden Ratio',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Product Sans',
                  fontSize: 20,
                ),
              ),
            ),
            Image.asset(
              'assets/Imges/14.png',
              height: MediaQuery.of(context).size.height * 0.30,
            ),
            InkWell(
              child: Text(
                "https://www.youtube.com/watch?v=vct4pM4Bk70",
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'Product Sans',
                  fontSize: 15,
                ),
              ),
              onTap: () {
                openurl3();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'What is it and why should you use Golden Ratio  to design',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Product Sans',
                  fontSize: 20,
                ),
              ),
            ),
            Image.asset(
              'assets/Imges/15.png',
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            InkWell(
              child: Text(
                "https://blog.prototypr.io",
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'Product Sans',
                  fontSize: 15,
                ),
              ),
              onTap: () {
                openurl4();
              },
            )
          ],
        ),
      ),
    );
  }
}

openurl() {
  String url1 = "https://www.youtube.com/watch?v=6nSfJEDZ_WM";
  launch(url1);
}

openurl1() {
  String url2 = "https://www.youtube.com/watch?v=keLN89CWZ-A";
  launch(url2);
}

openurl2() {
  String url3 = "https://youtu.be/5zosU6XTgSY";
  launch(url3);
}

openurl3() {
  String url4 = "https://www.youtube.com/watch?v=vct4pM4Bk70";
  launch(url4);
}

openurl4() {
  String url5 =
      "https://blog.prototypr.io/golden-ratio-what-it-is-and-why-should-you-use-it-in-design-7c3f43bcf98?gi=be5018568223";
  launch(url5);
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
