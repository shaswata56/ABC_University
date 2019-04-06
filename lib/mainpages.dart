import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {
  static String tag = 'Donate-Page';
  @override
  _MainPageState createState() => new  _MainPageState();
}

class  _MainPageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    final firstyear= Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {

        },
        padding: EdgeInsets.all(12),
        color: Colors.deepPurpleAccent,
        child: Text('1st Year', style: TextStyle(color: Colors.white)),
      ),
    );

    final secondyear= Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {

        },
        padding: EdgeInsets.all(12),
        color: Colors.deepPurpleAccent,
        child: Text('2nd year', style: TextStyle(color: Colors.white)),
      ),
    );
    final thirdyear= Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {

        },
        padding: EdgeInsets.all(12),
        color: Colors.deepPurpleAccent,
        child: Text('3rd year', style: TextStyle(color: Colors.white)),
      ),
    );
    final fourthyear= Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {

        },
        padding: EdgeInsets.all(12),
        color: Colors.deepPurpleAccent,
        child: Text('4th year', style: TextStyle(color: Colors.white)),
      ),
    );
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Center(
            child: new ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                firstyear,
                secondyear,
                thirdyear,
                fourthyear,

              ],
            ),
          )
        ],
      ),
    );
  }
}
