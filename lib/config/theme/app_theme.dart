import 'package:flutter/material.dart';

const colorList = <Color>[
  Color.fromARGB(255, 31, 245, 24),
  Color.fromARGB(255, 15, 121, 241),
  Color.fromARGB(255, 252, 140, 35),
  Color.fromARGB(255, 220, 255, 23),
  Color.fromARGB(255, 191, 41, 250),
  Color.fromARGB(255, 248, 58, 58),
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < colorList.length,
            'la seccion de color no cumple con el rango de 0 hasta ${colorList.length - 1}');
  ThemeData gettheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        // appBarTheme: const AppTheme (
        // ceterTitle> true
        // )
      );
}
