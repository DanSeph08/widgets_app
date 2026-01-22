import 'package:flutter/material.dart';

const colorList1 = <List<Color>>[];
const colorList2 = <Color>[
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.redAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(selectedColor >= 0, "Selected Color must be greater then 0"),
      assert(
        selectedColor < colorList2.length,
        "Selected Color must be less or equal than ${colorList2.length - 1}",
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList2[selectedColor],
    appBarTheme: AppBarTheme(centerTitle: true),
  );
}
