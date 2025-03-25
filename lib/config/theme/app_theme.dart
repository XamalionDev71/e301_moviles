import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.green,
  Colors.purple,
  Colors.deepOrange,
  Colors.pink,
  Colors.lime,
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0})
    : assert(selectColor >= 0, "El color debe ser mayor igual a 0"),
      assert(selectColor<colorList.length,
        "El color debe ser menor igual a ${colorList.length-1}");

  ThemeData getTheme() => ThemeData(
    colorSchemeSeed: colorList[selectColor],
  );
}
