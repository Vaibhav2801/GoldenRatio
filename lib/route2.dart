import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';

class Route2 extends StatefulWidget {
  @override
  _Route2State createState() => _Route2State();
}

class _Route2State extends State<Route2> {
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
                  "Nature",
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
                            'Golden Ratio in Nature',
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
              'assets/Imges/39.png',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'The famous Fibonacci sequence has captivated mathematicians, artists, designers, and scientists for centuries. Also known as the Golden Ratio, its ubiquity and astounding functionality in nature suggests its importance as a fundamental characteristic of the Universe.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                " Flower petals",
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
              'assets/Imges/38.png',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'The number of petals in a flower consistently follows the Fibonacci sequence. Famous examples include the lily, which has three petals, buttercups, which have five (pictured at left), the chicory'
                  's 21, the daisy'
                  's 34, and so on. Phi appears in petals on account of the ideal packing arrangement as selected by Darwinian processes; each petal is placed at 0.618034 per turn (out of a 360° circle) allowing for the best possible exposure to sunlight and other factors.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "Seed heads",
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
              'assets/Imges/20.png',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'The head of a flower is also subject to Fibonaccian processes. Typically, seeds are produced at the center, and then migrate towards the outside to fill all the space. Sunflowers provide a great example of these spiraling patterns.In some cases, the seed heads are so tightly packed that total number can get quite high — as many as 144 or more. And when counting these spirals, the total tends to match a Fibonacci number. Interestingly, a highly irrational number is required to optimize filling (namely one that will not be well represented by a fraction). Phi fits the bill rather nicely.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "Pinecones",
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
              'assets/Imges/40.png',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Similarly, the seed pods on a pinecone are arranged in a spiral pattern. Each cone consists of a pair of spirals, each one spiraling upwards in opposing directions. The number of steps will almost always match a pair of consecutive Fibonacci numbers. For example, a 3-5 cone is a cone which meets at the back after three steps along the left spiral, and five steps along the right.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 20,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "Shells",
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
              'assets/Imges/45.png',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                'The unique properties of the Golden Rectangle provides another example. This shape, a rectangle in which the ratio of the sides a/b is equal to the golden mean (phi), can result in a nesting process that can be repeated into infinity — and which takes on the form of a spiral. It'
                's call the logarithmic spiral, and it abounds in nature.',
                style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontSize: 20,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "Spiral Galaxies",
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
              'assets/Imges/42.png',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                'Not surprisingly, spiral galaxies also follow the familiar Fibonacci pattern. The Milky Way has several spiral arms, each of them a logarithmic spiral of about 12 degrees. As an interesting aside, spiral galaxies appear to defy Newtonian physics. As early as 1925, astronomers realized that, since the angular speed of rotation of the galactic disk varies with distance from the center, the radial arms should become curved as galaxies rotate. Subsequently, after a few rotations, spiral arms should start to wind around a galaxy. But they don'
                't — hence the so-called winding problem. The stars on the outside, it would seem, move at a velocity higher than expected — a unique trait of the cosmos that helps preserve its shape.',
                style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontSize: 20,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.01),
              child: Text(
                "Hurricanes",
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
              'assets/Imges/46.png',
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
