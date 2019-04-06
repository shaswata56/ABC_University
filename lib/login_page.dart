import 'package:Pathagar/create_account.dart';
import 'package:Pathagar/Forget_Password.dart';
import 'package:Pathagar/feed.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

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

    final email = TextFormField(

      style: TextStyle(color: Colors.white),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
      },
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: null,
      controller: new TextEditingController(),
      cursorColor: Colors.white,
      decoration: InputDecoration(

        hintText: 'Email',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(

      style: TextStyle(color: Colors.white),

      autofocus: false,
      initialValue: null,
      controller: new TextEditingController(),
      obscureText: true,
      cursorColor: Colors.white,

      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
      },
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final loginButton = Padding(

      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            emailController = email.controller;
            passwordController = password.controller;
            if(email.controller.text == 'teacher@gmail.com' && password.controller.text == '12345')
            {
                Navigator.of(context).pushNamed(Feed.tag);
            }
            else if(email.controller.text == 'student@gmail.com' && password.controller.text == '12345')
            {
              Navigator.of(context).pushNamed(Feed.tag);
            } else {
              return showDialog(
                context: context,
                builder: (BuildContext context) {
                  // return object of type Dialog
                  return AlertDialog(
                    title: new Text("Email or Password not matched!!!"),
                    content: new Text("Please Try Again."),
                    actions: <Widget>[
                      // usually buttons at the bottom of the dialog
                      new FlatButton(
                        child: new Text("Close"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }
          }
        },
        padding: EdgeInsets.all(12),
        color: Colors.deepPurpleAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final createLabel = FlatButton(
      child: Text(
        'Create an Account?',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(SignUpPage.tag);
      },
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(Forgot_PassWord.tag);
      },
    );

    return Scaffold(
      body: new Stack(

        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
                image: new AssetImage("assets/iict.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Form(
            key: _formKey,
            child: new Center(

            child: new ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                logo,
                SizedBox(height: 48.0),
                email,
                SizedBox(height: 8.0),
                password,
                SizedBox(height: 24.0),
                loginButton,
                forgotLabel,
                createLabel
              ],
            ),
            )
          )
        ],
      ),
    );
  }
}
