import 'package:flutter/material.dart';
import 'package:clip_shadow/clip_shadow.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
                      'How it all Started :',
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
                  height: MediaQuery.of(context).size.height * 0.05,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(children: [
                    Text(
                      'According to Mario Livio, :',
                      style: TextStyle(
                        fontFamily: 'Product Sans',
                        fontSize: 20,
                      ),
                    )
                  ]))
            ],
          )),
      Image.asset(
        'assets/Imges/4th.png',
        height: MediaQuery.of(context).size.height * 0.40,
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        'Michael Mestlinus ',
        style: TextStyle(
            fontFamily: 'Product Sans',
            fontSize: 20,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold),
      ),
      Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Some of the greatest mathematical minds of all ages, from Pythagoras and Euclid in ancient Greece, through the medieval Italian mathematician Leonardo of Pisa and the Renaissance astronomer Johannes Kepler, to present-day scientific figures such as Oxford physicist Roger Penrose, have spent endless hours over this simple ratio and its properties. ... Biologists, artists, musicians, historians, architects, psychologists, and even mystics have pondered and debated the basis of its ubiquity and appeal. In fact, it is probably fair to say that the Golden Ratio has inspired thinkers of all disciplines like no other number in the history of mathematics.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      SizedBox(
        height: 15,
      ),
      Image.asset(
        'assets/Imges/GR1.png',
        height: MediaQuery.of(context).size.height * 0.40,
      ),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Text(
          '— The Golden Ratio: The Story of Phi, the World'
          's Most Astonishing Number',
          style: TextStyle(
            fontFamily: 'Product Sans',
            color: Colors.blueAccent,
            fontSize: 20,
          ),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Image.asset(
        'assets/Imges/GR2.png',
        height: MediaQuery.of(context).size.height * 0.30,
      ),
      Text(
        'Monument (Ancient Greek)',
        style: TextStyle(
            fontFamily: 'Product Sans',
            fontSize: 20,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold),
      ),
      Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Ancient Greek mathematicians first studied what we now call the golden ratio, because of its frequent appearance in geometry; the division of a line into "extreme and mean ratio" (the golden section) is important in the geometry of regular pentagrams and pentagons. According to one story, 5th-century BC mathematician Hippasus discovered that the golden ratio was neither a whole number nor a fraction (an irrational number), surprising Pythagoreans. Euclid'
            's Elements (c. 300 BC) provides several propositions and their proofs employing the golden ratio, and contains its first known definition which proceeds as follows:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          'Geometry has two great treasures: one is the theorem of Pythagoras, the other the division of a line into extreme and mean ratio. The first we may compare to a mass of gold, the second we may call a precious jewel.',
          style: TextStyle(
            color: Colors.blueAccent,
            fontFamily: 'Product Sans',
            fontSize: 20,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'By 1910, mathematician Mark Barr began using the Greek letter Phi (φ) as a symbol for the golden ratio. It has also been represented by tau (τ), the first letter of the ancient Greek τομή ('
            'cut'
            'or'
            'section'
            ')',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
      Image.asset(
        'assets/Imges/GR3.png',
        height: MediaQuery.of(context).size.height * 0.30,
      ),
      Text(
        'Leonardo da Vinci ',
        style: TextStyle(
            fontFamily: 'Product Sans',
            fontSize: 20,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold),
      ),
      Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Between 1973 and 1974, Roger Penrose developed Penrose tiling, a pattern related to the golden ratio both in the ratio of areas of its two rhombic tiles and in their relative frequency within the pattern.[37] This led to Dan Shechtman'
            's early 1980s discovery of quasicrystals,some of which exhibit icosahedral symmetry.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 20,
            ),
          )),
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
