import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'create_account.dart';
import 'feed.dart';
import 'package:Pathagar/Forget_Password.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    SignUpPage.tag: (context) => SignUpPage(),
    HomePage.tag: (context) => HomePage(),
    Feed.tag: (context) => Feed(),
   Forgot_PassWord.tag: (context) => Forgot_PassWord(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pathagar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
