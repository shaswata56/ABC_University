import 'package:flutter/material.dart';
import 'package:Pathagar/login_page.dart';

class SignUpPage extends StatefulWidget {
  static String tag = 'signup-page';
  @override
  _SignupPageState createState() => new _SignupPageState();
}

class _SignupPageState extends State<SignUpPage> {
  int student = 1;
  int teacher = 2;
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

    final name = TextFormField(

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

        hintText: 'Name',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
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

    final confirmPassword = TextFormField(

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
        hintText: 'Confirm Password',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final signupButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            emailController = email.controller;
            passwordController = password.controller;
            if(password.controller.text == confirmPassword.controller.text)
            {
              return showDialog(
                context: context,
                builder: (BuildContext context) {
                  // return object of type Dialog
                  return AlertDialog(
                    title: new Text("Done!!!"),
                    content: new Text("Your account has been created successfully"),
                    actions: <Widget>[
                      // usually buttons at the bottom of the dialog
                      new FlatButton(
                        child: new Text("Login"),
                        onPressed: () {
                          Navigator.of(context).pushNamed(LoginPage.tag);
                        },
                      ),
                    ],
                  );
                },
              );
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
        child: Text('Create Account', style: TextStyle(color: Colors.white)),
      ),
    );

    final department = TextFormField(

      style: TextStyle(color: Colors.white),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
      },
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: null,
      controller: new TextEditingController(),
      cursorColor: Colors.white,
      decoration: InputDecoration(

        hintText: 'Department',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final code = TextFormField(

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

        hintText: 'Code',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final session = TextFormField(

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

        hintText: 'Session (for Students)',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    void teacher_radio(int value) {
      setState(() {
        student = value;

        switch (student) {
          case 0:
            value = 0;
            break;
          case 1:
            value = 1;
            break;
        }
      });
    }

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
          new Center(
            child: new ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                logo,
                SizedBox(height: 48.0),
                name,
                SizedBox(height: 8.0),
                email,
                SizedBox(height: 8.0),
                password,
                SizedBox(height: 8.0),
                confirmPassword,
                new Padding(
                  padding: new EdgeInsets.all(8.0),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Radio(
                      value: 0,
                      onChanged: teacher_radio,
                      groupValue: teacher,
                    ),
                    new Text(
                      'Student',
                      style: new TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                    new Radio(
                      value: 1,
                      onChanged: teacher_radio,
                      groupValue: teacher,
                    ),
                    new Text(
                      'Teacher',
                      style: new TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ],
                ),
                code,
                SizedBox(height: 8.0),
                session,
                SizedBox(height: 8.0),
                department,
                SizedBox(height: 24.0),
                signupButton
              ],
            ),
          )
        ],
      ),
    );
  }
}
