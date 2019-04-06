import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Donate extends StatefulWidget {
  static String tag = 'Donate-Page';
  @override
  _DonatePageState createState() => new  _DonatePageState ();
}

class  _DonatePageState  extends State<Donate> {
  @override
  Widget build(BuildContext context) {
    final Ebook= Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {

        },
        padding: EdgeInsets.all(12),
        color: Colors.deepPurpleAccent,
        child: Text('Donate E-book', style: TextStyle(color: Colors.white)),
      ),
    );

    final Confirm= Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {

        },
        padding: EdgeInsets.all(12),
        color: Colors.deepPurpleAccent,
        child: Text('Donate Hardcopy', style: TextStyle(color: Colors.white)),
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
                Ebook,
                Confirm,
              ],
            ),
          )
        ],
      ),
    );
  }
}