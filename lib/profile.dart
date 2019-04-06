import 'package:Pathagar/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Profile extends StatelessWidget {

 build(BuildContext context)
  {
    Widget appBarTitle = new Text(
      "Profile",
      style: new TextStyle(color: Colors.white),
    );

    final Logout= Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(LoginPage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.deepPurpleAccent,
        child: Text('Log Out', style: TextStyle(color: Colors.white)),
      ),
    );



    return  SizedBox(height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Text('Mr.Quazi Ishtiaque Mahmud Rafi',
                 style: TextStyle(fontWeight: FontWeight.bold)),
              leading: Icon(
                Icons.account_circle,
                color: Colors.deepPurple,
              ),
            ),
            Divider(),


            ListTile(
              title: Text('Department: Software Engineering',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              leading: Icon(
                Icons.dashboard,
                color: Colors.deepPurple,
              ),
            ),

            Divider(),

            ListTile(
              title: Text('Rank: Lecturer',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              leading: Icon(
                Icons.bookmark,
                color: Colors.deepPurple,
              ),
            ),

            Divider(),
            ListTile(
              title: Text('Email: Rafi@sust.edu',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              leading: Icon(
                Icons.drafts,
                color: Colors.deepPurple,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Change Username or Password',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(
                Icons.verified_user,
                color: Colors.deepPurple,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Change Address',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(
                Icons.location_on,
                color: Colors.deepPurple,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Notifications',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(
                Icons.notifications,
                color: Colors.deepPurple,
              ),
            ),
            Divider(),
            Logout,

          ],

        ),



      ),

    );




  }
}