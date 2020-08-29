import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';

class Route3 extends StatefulWidget {
  @override
  _Route3State createState() => _Route3State();
}

class _Route3State extends State<Route3> {
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
                  "Architecture",
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
                            'Golden Ratio in Architecture',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontFamily: 'Product Sans',
                              fontSize: 25,
                            ),
                          )
                        ]))
                  ],
                )),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'The Golden Ratio (also called the golden rectangle and golden mean) is used by designers in creating product logos.'
                  'Nike, Apple, and Volkswagenare a few logos that have been created using the golden ratio illustration.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                " The Great Pyramid",
                style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/Imges/33.gif',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'The Ahmes papyrus of Egypt gives an account of the building of the Great Pyramid of Giaz in 4700 B.C. with proportions according to a "sacred ratio."',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                " Parthenon",
                style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/Imges/34.gif',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'The Greek sculptor Phidias sculpted many things including the bands of sculpture that run above the columns of the Parthenon.Even from the time of the Greeks, a rectangle whose sides are in the "golden proportion" has been known since it occurs naturally in some of the proportions of the Five Platonic. This rectangle is supposed to appear in many of the proportions of that famous ancient Greek temple in the Acropolis in Athens, Greece.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "Chartres Cathedral",
                style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/Imges/35.gif',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'The Medieval builders of churches and cathedrals approached the design of their buildings in much the same way as the Greeks. They tried to connect geometry and art.'
                  'Inside and out, their building were intricate construction based on the golden section.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "Le Corbussier",
                style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/Imges/36.gif',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "Porch of Maidens, Acropolis, Athens",
                style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/Imges/37.gif',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
          ],
        ),
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
