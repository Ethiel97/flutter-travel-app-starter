import 'package:flutter/material.dart';
import 'package:flutter_travel_starter/places.dart';

class PlaceWidget extends StatelessWidget {
  const PlaceWidget({
    Key key,
    @required this.place,
  }) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
    );
  }
}
