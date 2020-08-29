import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:goldenratio/route4.dart';
import 'package:goldenratio/route3.dart';
import 'package:goldenratio/route2.dart';
import 'package:goldenratio/route1.dart';

class ThirdRoute extends StatefulWidget {
  @override
  _ThirdRouteState createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {
  @override
  Items item1 = new Items(id: 1, title: "Logos", img: "assets/Imges/16.png");
  Items item2 = new Items(id: 2, title: "Nature", img: "assets/Imges/17.png");
  Items item3 =
      new Items(id: 3, title: "Architecture", img: "assets/Imges/18.png");
  Items item4 = new Items(id: 4, title: "Design", img: "assets/Imges/19.png");
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4];
    var color = 0xff453658;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,
          elevation: 10.0,
          title: Text(
            'Applications',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Product Sans',
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                })
          ],
        ),
        backgroundColor: Color(0xff392850),
        body: Container(
            padding: EdgeInsets.only(top: 25),
            child: GridView.count(
                childAspectRatio: 0.55,
                padding: EdgeInsets.only(left: 16, right: 16),
                crossAxisCount: 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 18,
                children: myList.map((data) {
                  return new Container(
                      decoration: BoxDecoration(
                          color: Color(color),
                          borderRadius: BorderRadius.circular(10)),
                      child: InkWell(
                          onTap: () {
                            // print(index);
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      data.id == 1
                                          ? Route1()
                                          : (data.id == 2
                                              ? Route2()
                                              : (data.id == 3
                                                  ? Route3()
                                                  : Route4())),
                                  transitionDuration:
                                      Duration(milliseconds: 400),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    return ScaleTransition(
                                        scale: animation,
                                        child: child,
                                        alignment: Alignment.center);
                                  },
                                ));
                          },
                          child: Card(
                            color: Color(color),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  data.img,
                                  width: 1000,
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                                Text(
                                  data.title,
                                  style: TextStyle(
                                      fontFamily: 'Product Sans',
                                      color: Colors.white,
                                      fontSize: 22,
                                      letterSpacing: 0.9),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                              ],
                            ),
                          )));
                }).toList())));
  }
}

class DataSearch extends SearchDelegate<String> {
  final dp = [
    "Logos",
    "Nature",
    "Architectire",
    "Design",
  ];

  final pq = [
    "Logos",
    "Design",
  ];

  Items item1 = new Items(id: 1, title: "Logos");
  Items item2 = new Items(id: 2, title: "Nature");
  Items item3 = new Items(id: 3, title: "Architecture");
  Items item4 = new Items(id: 4, title: "Design");

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          print("hello");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ThirdRoute()),
          );
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {}

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList =
        query.isEmpty ? pq : dp.where((p) => p.startsWith(query)).toList();
    List<Items> myList = [item1, item2, item3, item4];
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          if (query == '') {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => index == 1
                      ? Route4()
                      : (index == 2
                          ? Route4()
                          : (index == 3 ? Route4() : Route1()))),
            );
          }
          if (query[0] == 'L') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Route1()),
            );
          }
          if (query[0] == 'D') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Route4()),
            );
          }
          if (query[0] == 'A') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Route3()),
            );
          }
          if (query[0] == 'N') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Route2()),
            );
          }
        },
        leading: Icon(Icons.screen_lock_landscape),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ),
      itemCount: suggestionList.length,
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

class Items {
  int id;
  String title;
  String img;
  Items({this.title, this.img, this.id});
}
