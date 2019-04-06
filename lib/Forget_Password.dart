import 'package:flutter/material.dart';
//import 'package:Pathagar/login_page.dart';

// ignore: camel_case_types
class Forgot_PassWord extends StatefulWidget {
  static String tag = 'ForgotPassword-Page';
  @override
  _ForgotPasswordPageState createState() => new _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<Forgot_PassWord> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 50.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final code = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '      Enter your email to reset password',
        style: TextStyle(fontSize: 15.0, color: Colors.redAccent),
      ),
    );


    final email = TextFormField(
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: 'Email',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
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
        child: Text('Confirm', style: TextStyle(color: Colors.white)),
      ),
    );







    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                image: new AssetImage("assets/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Center(
            child: new ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                logo,
                SizedBox(height: 48.0),
                code,
                email,
                SizedBox(height: 8.0),
                Confirm,


              ],
            ),
          )
        ],
      ),
    );
  }
}
