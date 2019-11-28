import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_screen.dart';

void main() => runApp(TravelAppWrapper());

class TravelAppWrapper extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Travel',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Montserrat'),
      home: TravelApp(title: 'Flutter Travel App'),
    );
  }
}

class TravelApp extends StatefulWidget {
  TravelApp({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  final List<Widget> _screens = [
    HomeScreen(),
    Container(
      child: Center(
        child: Text("Second Screen"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Third Screen"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Fourth Screen"),
      ),
    ),
  ];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
  }

  onItemClicked(index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: buildBottomNavigationBar(context),
        body: _screens[_currentPage]);
  }

  Widget buildBottomNavigationBar(context) {
    return Container();
  }

  BottomNavigationBarItem buildBarItem(IconData icon, String title) {
    return BottomNavigationBarItem(
        activeIcon: Icon(
          icon,
          color: Colors.blueGrey,
        ),
        title: Text(title),
        icon: Icon(
          icon,
          color: Colors.black,
        ));
  }
}
