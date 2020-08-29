import 'package:flutter/material.dart';
import 'package:clip_shadow/clip_shadow.dart';

class Calculation extends StatefulWidget {
  @override
  _CalculationState createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
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
                      'The Actual Value',
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'Product Sans',
                        fontSize: 30,
                      ),
                    )
                  ]))
            ],
          )),
      Container(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(children: [
                    Text(
                      'The Golden Ratio is equal to:',
                      style: TextStyle(
                        fontFamily: 'Product Sans',
                        fontSize: 20,
                      ),
                    )
                  ]))
            ],
          )),
      Container(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(children: [
                    Text(
                      '1.61803398874989484820... (etc.)',
                      style: TextStyle(
                          color: Color(0xffDAA520),
                          fontFamily: 'Product Sans',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ]))
            ],
          )),
      Padding(
          padding: EdgeInsets.all(10),
          child: Text.rich(
            TextSpan(
                text:
                    'The digits just keep on going, with no pattern. In fact the Golden Ratio is known to be an ',
                children: [
                  TextSpan(
                      text: 'Irrational Numberr.',
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.blue))
                ],
                style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontSize: 20,
                )),
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
                      'Calculating it :',
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
          padding: EdgeInsets.all(10),
          child: Text(
            'Two quantities a and b are said to be in the golden ratio φ if',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      Image.asset(
        'assets/Imges/1.png',
        height: MediaQuery.of(context).size.height * 0.10,
      ),
      Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'One method for finding the value of φ is to start with the left fraction. Through simplifying the fraction and substituting in b/a = 1/φ,',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      Image.asset(
        'assets/Imges/2.png',
        height: MediaQuery.of(context).size.height * 0.10,
      ),
      Container(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(children: [
                    Text(
                      'Therefore,',
                      style: TextStyle(
                        fontFamily: 'Product Sans',
                        fontSize: 20,
                      ),
                    )
                  ]))
            ],
          )),
      Image.asset(
        'assets/Imges/3.png',
        height: MediaQuery.of(context).size.height * 0.10,
      ),
      Container(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(children: [
                    Text(
                      'Multiplying by φ gives',
                      style: TextStyle(
                        fontFamily: 'Product Sans',
                        fontSize: 20,
                      ),
                    )
                  ]))
            ],
          )),
      Image.asset(
        'assets/Imges/4.png',
        height: MediaQuery.of(context).size.height * 0.10,
      ),
      Container(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(children: [
                    Text(
                      'which can be rearranged to',
                      style: TextStyle(
                        fontFamily: 'Product Sans',
                        fontSize: 20,
                      ),
                    )
                  ]))
            ],
          )),
      Image.asset(
        'assets/Imges/5.png',
        height: MediaQuery.of(context).size.height * 0.10,
      ),
      Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Using the quadratic formula, two solutions are obtained:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      Image.asset(
        'assets/Imges/6.png',
        height: MediaQuery.of(context).size.height * 0.10,
      ),
      Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Because φ is the ratio between positive quantities, φ is necessarily positive:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      Image.asset(
        'assets/Imges/7.png',
        height: MediaQuery.of(context).size.height * 0.10,
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
                      'Fibonacci Sequence',
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
          padding: EdgeInsets.all(10),
          child: Text(
            'There is a special relationship between the Golden Ratio and the Fibonacci Sequence:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.blue,
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            '0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...',
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Color(0xffDAA520),
              fontFamily: 'Product Sans',
              fontSize: 25,
            ),
          )),
      Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            '(The next number is found by adding up the two numbers before it.)',
            textAlign: TextAlign.justify,
            style: TextStyle(
              //  color: Colors.blue,
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'And here is a surprise: when we take any two successive (one after the other) Fibonacci Numbers, their ratio is very close to the Golden Ratio.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                //color: Colors.blue,
                fontFamily: 'Product Sans',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )),
      Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'In fact, the bigger the pair of Fibonacci Numbers, the closer the approximation. Let us try a few:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      Image.asset(
        'assets/Imges/8.png',
        height: 300,
        width: 300,
      ),
      Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'We don'
            't have to start with 2 and 3, here I randomly chose 192 and 16 (and got the sequence 192, 16, 208, 224, 432, 656, 1088, 1744, 2832, 4576, 7408, 11984, 19392, 31376, ...):',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      Image.asset(
        'assets/Imges/10.png',
        height: 300,
        width: 300,
      ),
      Image.asset(
        'assets/Imges/gif1.gif',
        height: MediaQuery.of(context).size.height * 0.35,
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
