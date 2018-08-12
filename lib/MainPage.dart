import 'package:anatomika/GamePages/quiz_page.dart';
import 'package:anatomika/HomePage.dart';
import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  @override
  MainState createState() {
    return new MainState();
  }

}

class MainState extends State<Main> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    new Home(),
    new Center(child: new Text("PAGE 2")),
    new Center(child: new Text("PAGE 3")),
    new QuizPage()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  void _showNavbar() {

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.video_library, color: Colors.white,),
              onPressed: _showNavbar),
        ],
        leading: new IconButton(
            icon: new Icon(Icons.menu, color: Colors.white,),
            onPressed: () => onTabTapped(3)),
        title: new Text("ANATOMICA"),
        backgroundColor: Colors.redAccent,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        onTap: onTabTapped,
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text("Home")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.dashboard), title: new Text("Dashboard")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text("Profile"))
        ],
      ),
    );
  }
}


