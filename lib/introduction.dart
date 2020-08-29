import 'package:flutter/material.dart';
import 'package:clip_shadow/clip_shadow.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
          height: 30,
          child: PreferredSize(
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
                )),
              ),
            ),
            preferredSize: Size.fromHeight(15),
          )),
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
                      'The Golden Ratio:',
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'Product Sans',
                        fontSize: 30,
                      ),
                    )
                  ]))
            ],
          )),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          'The golden ratio'
          '(symbol is the Greek letter "phi"  is a special number approximately equal to 1.618',
          style: TextStyle(
            fontFamily: 'Product Sans',
            fontSize: 20,
          ),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Image.asset(
        'assets/Imges/symbol.png',
        height: MediaQuery.of(context).size.height * 0.15,
      ),
      Text(
        'Symbol (phi) ',
        style: TextStyle(
            fontFamily: 'Product Sans',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      SizedBox(
        width: 100,
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Text(
          'It appears many times in geometry, art, architecture and other areas.',
          style: TextStyle(
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
                      'The idea behind it :',
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'Product Sans',
                        fontSize: 30,
                      ),
                    )
                  ]))
            ],
          )),
      Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'We find the golden ratio when we divide a line into two parts so that:',
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      SizedBox(
        height: 10,
      ),
      Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'the long part divided by the short part',
            style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 20,
                backgroundColor: Color(0xffadd8e6)
                //fontWeight: FontWeight.bold
                ),
          )),
      SizedBox(
        height: 10,
      ),
      Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'is also equal to',
            style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )),
      SizedBox(
        height: 10,
      ),
      Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            'the whole length divided by the long part',
            style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 19,
                backgroundColor: Color(0xffadd8e6)
                //fontWeight: FontWeight.bold
                ),
          )),
      Image.asset(
        'assets/Imges/3rd.png',
        height: MediaQuery.of(context).size.height * 0.30,
      ),
      Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'It is the ratio of a line segment cut into two pieces of different lengths such that the ratio of the whole segment to that of the longer segment is equal to the ratio of the longer segment to the shorter segment. let, the length of the shorter segment be one unit and the length of the longer segment be x units gives rise to the equation (x + 1)/x = x/1; this may be rearranged to form the quadratic equation x2 – x – 1 = 0, for which the positive solution is x = (1 + Square root of√5)/2, the golden ratio.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      Image.asset(
        'assets/Imges/2nd.png',
        height: MediaQuery.of(context).size.height * 0.30,
      ),
      Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'A golden rectangle with longer side a and shorter side b, when placed adjacent to a square with sides of length a, will produce a similar golden rectangle with longer side a + b and shorter side a. This illustrates the relationship',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      SizedBox(
        height: 20,
      ),
    ]));
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
