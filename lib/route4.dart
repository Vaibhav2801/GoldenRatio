import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';

class Route4 extends StatefulWidget {
  @override
  _Route4State createState() => _Route4State();
}

class _Route4State extends State<Route4> {
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
                  "Art",
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
                            'Golden Ratio in Arts',
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
                " An Old man by Leonardo Da Vinci",
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
              'assets/Imges/28.gif',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Leonardo Da Vinci explored the human body involving in the ratios of the lengths of various body parts. He called this ratio the "divine proportion" and featured it in many of his paintings.Leonardo da Vinci'
                  's drawing of an old man can be overlaid with a square subdivided into rectangles, some of which approximate Golden Rectangles.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "Mona-Risa by Leonardo Da Vinci",
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
              'assets/Imges/29.gif',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'This picture includes lots of Golden Rectangles. In above figure, we can draw a rectangle whose base extends from the woman'
                  's right wrist to her left elbow and extend the rectangle vertically until it reaches the very top of her head. Then we will have a golden rectangle.'
                  'Also, if we draw squares inside this Golden Rectangle, we will discover that the edges of these new squares come to all the important focal points of the woman: her chin, her eye, her nose, and the upturned corner of her mysterious mouth.'
                  'It is believed that Leonardo, as a mathematician tried to incorporate of mathematics into art. This painting seems to be made purposefully line up with golden rectangle.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "Crucifixion by Raphael",
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
              'assets/Imges/30.gif',
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
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "self-portrait by Rembrandt",
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
              'assets/Imges/31.gif',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'We can draw three straight lines into this figure. Then, the image of the feature is included into a triangle. Moreover, if a perpendicular line would be dropped from the apex of the triangle to the base, the triangle would cut the base in Golden Section.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "The sacrament of the Last Supper by Salvador Dali",
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
              'assets/Imges/32.gif',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'This picture is painted inside a Golden Rectangle. Also, we can find part of an enormous dodecahedron above the table. Since the polyhedron consists of 12 regular Pentagons, it is closely connected to the golden section.',
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
