import 'package:flutter/material.dart';

const colorList = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.indigo,
  Colors.lime,
  Colors.amber,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(
            selectedColor >= 0, 'Selected color index must be greater than 0'),
        assert(selectedColor < colorList.length,
            'Selected color index must be lower than ${colorList.length}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(centerTitle: true),
      );
}
