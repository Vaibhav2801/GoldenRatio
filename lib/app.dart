import 'package:flutter/material.dart';
import 'griddashboard.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Golden Ratio",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Golden Ratio",
          style: TextStyle(
              fontFamily: 'Product Sans',
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        elevation: 10.0,
        centerTitle: true,
        backgroundColor: Color(0xff432054),
      ),
      backgroundColor: Color(0xff392850),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
          GridDashboard()
        ],
      ),
    ));
  }
}
