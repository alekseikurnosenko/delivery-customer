import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'mapIcon.g.dart';

@swidget
Widget mapIcon(BuildContext context, IconData icon, {bool invert = false}) {
  Color fillColor;
  Color iconColor;

  if (!invert) {
    fillColor = Colors.white;
    iconColor = Colors.red;
  } else {
    fillColor = Colors.red;
    iconColor = Colors.white;
  }

  return Container(
    width: 20,
    height: 20,
    decoration: BoxDecoration(
        color: fillColor,
        shape: BoxShape.circle,
        border: Border.all(width: 1, color: iconColor)),
    child: Icon(
      icon,
      color: iconColor,
      size: 12,
    ),
  );
}

@swidget
Widget carIcon(BuildContext context) {
  return Container(
    width: 18,
    height: 18,
    decoration: BoxDecoration(color: Colors.blue[700], shape: BoxShape.circle),
    child: Icon(
      Icons.directions_car,
      color: Colors.white,
      size: 10,
    ),
  );
}
