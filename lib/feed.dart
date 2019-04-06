import 'package:flutter/material.dart';
import 'package:Pathagar/donate.dart';
import 'package:Pathagar/mainpages.dart';
import 'package:Pathagar/profile.dart';

void main() => runApp(new Feed());

class Feed extends StatelessWidget {
  static String tag = 'Feed';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Feed',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.deepPurpleAccent,
        primaryColorDark: Colors.deepPurple,
        accentColor: Colors.deepPurpleAccent,
      ),
      home: new DashboardScreen(title: 'Feed'),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardScreenState createState() => new _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }


  void navigationTapped(int page) {
    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 200), curve: Curves.decelerate);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          widget.title,
          style: new TextStyle(color: const Color(0xFFFFFFFF)),
        ),
      ),
      body: new PageView(
        children: [
          new mainpage(),
          new Profile("Profile"),
          new Donate(),
        ],
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.deepPurple,
        ), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.search,
                  color: const Color(0xFFFFFFFF),
                ),
                title: new Text(
                  "Years",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.account_circle,
                  color: const Color(0xFFFFFFFF),
                ),
                title: new Text(
                  "Profile",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.share,
                  color: const Color(0xFFFFFFFF),
                ),
                title: new Text(
                  "Donate Books",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
            ),],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }
}