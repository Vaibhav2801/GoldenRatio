import 'package:flutter/material.dart';
import 'secondroute.dart';
import 'thirdroute.dart';
import 'fourthroute.dart';
import 'fifthroute.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      id: 1,
      title: "About",
      subtitle: "Information",
      img: "assets/Icons/books.png");
  Items item2 = new Items(
      id: 2,
      title: "Explore",
      subtitle: "Applications",
      img: "assets/Icons/bulb.png");
  Items item3 = new Items(
      id: 3,
      title: "Interaction",
      subtitle: "Match Colours",
      img: "assets/Icons/game.png");
  Items item4 = new Items(
      id: 4,
      title: "Extras",
      subtitle: "Video Links",
      img: "assets/Icons/Extras.png");
  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4];
    var color = 0xff453658;
    //print(myList);
    return Flexible(
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
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      data.id == 1
                                          ? SecondRoute()
                                          : (data.id == 2
                                              ? ThirdRoute()
                                              : (data.id == 3
                                                  ? FourthRoute()
                                                  : FifthRoute())),
                              transitionDuration: Duration(milliseconds: 400),
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
                              height: MediaQuery.of(context).size.height * 0.15,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
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
                            Text(
                              data.subtitle,
                              style: TextStyle(
                                  fontFamily: 'Product Sans',
                                  color: Colors.white,
                                  fontSize: 18,
                                  letterSpacing: 0.4),
                            ),
                          ],
                        ),
                      )));
            }).toList()));
  }
}

class Items {
  int id;
  String title;
  String subtitle;
  String img;
  Items({this.title, this.subtitle, this.img, this.id});
}
