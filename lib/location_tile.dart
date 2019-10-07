import 'package:flutter/material.dart';
import 'package:flutter_travel_starter/places.dart';

class LocationTile extends StatelessWidget {
  const LocationTile({
    Key key,
    @required this.location,
  }) : super(key: key);

  final Place location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14),
    );
  }
}
