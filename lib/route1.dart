import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';

class Route1 extends StatefulWidget {
  @override
  _Route1State createState() => _Route1State();
}

class _Route1State extends State<Route1> {
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
                  "Logos",
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
                            'Golden Ratio in Logo Design',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontFamily: 'Product Sans',
                              fontSize: 25,
                            ),
                          )
                        ]))
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/Imges/26.png',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
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
                "The Apple Logo Design",
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
              'assets/Imges/23.png',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Above is the design of the famous brand Apple Inc. (formerly Apple Computers). This is by far one of my personal favorite marks, as it embodies the deeper meaning of what their brand is about – our imperfections of being human, and striving to being better humans (challenging status quo) – as the apple with a bite taken out of it references the biblical story of Adam and Eve and the original sin. Here you can clearly see how the use of the golden circle distills a complex form into a simple and quickly recognizable mark.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "Twitter Logo Design ",
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
              'assets/Imges/24.png',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'As you can see in the Twitter logo‘s evolution above, the far left shows hand illustrated artwork of the bird with proportions close to that of a real bird, but when viewed as a small icon, becomes degraded and hard to recognize clearly. At the far right, you can see how the bird design had evolved to be a highly simplified icon that is quick to visually read, yet still has personality. This icon, along with Apple’s, mixed with great business strategy, are among the most recognizable icons on earth. I see these icons as being at their simplest and truest form, that can stand the test of time and supersede graphic trends.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "Responsify logo design ",
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
              'assets/Imges/25.png',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'All that being said, you now have context as to why I have the highest respect for the golden ratio, in instances when a form can be distilled and simplified for the optimal recognition by its audience. When redesigning our logo, I wanted it to be as equally as iconic and memorable as the Apple and Twitter icons (even though we are a humble and boutique agency). The meaning behind our logo includes two things that embody our brand purpose of “empowering people so they can live a better quality of a life”, the symbol of a butterfly – a metaphor for life transformation, and an energy bolt – a symbol of empowerment. After going through many iterations of the golden ratio logo design, I challenged myself to use the proportions to design our brand mark. Above is the final result, whereby I used the fixed sized circles following the proportional sizes of the golden ratio to reduce the shape to an easily distinguishable icon, that can be seen clearly up close or far away.'
                  'I hope you enjoyed my rant on why I respect the golden ratio in art and design, and why I enjoyed using it as a tool to arrive at the final logo for Responsify. Now the logo signifies empowering life transformation more clearly, and will look better on a cape! I hope you have found a new respect for the golden ratio too.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
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
