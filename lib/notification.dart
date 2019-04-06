import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  static String tag = 'Notifications';
  Notifications(this.listType);
  final String listType;
  @override
  _NotificationPageState createState() => new  _NotificationPageState ();
}

class  _NotificationPageState  extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Text('Sunday\'s Java class is postponed to Monday',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(
                Icons.notifications,
                color: Colors.deepPurple,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Requirement Engineering exam will held Monday',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(
                Icons.notifications,
                color: Colors.deepPurple,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Computer Architechture Lab exam will be on Thursday, 2 pm',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(
                Icons.notifications,
                color: Colors.deepPurple,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Your semester fee must be paid within 15 April',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              leading: Icon(
                Icons.notifications,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}