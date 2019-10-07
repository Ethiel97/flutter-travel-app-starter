import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(28),
      children: <Widget>[
        buildHeader(),
        SizedBox(
          height: 34,
        ),
        buildSearchBox(),
        SizedBox(
          height: 28.0,
        ),
        buildLocationsList(),
        buildPlacesList(context)
      ],
    );
  }

  Widget buildHeader() {
    return Container();
  }

  Widget buildSearchBox() {
    return Container();
  }

  Widget buildLocationsList() {
    return Container();
  }

  Widget buildPlacesList(context) {
    return Container();
  }
}
