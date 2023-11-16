import 'package:flutter/material.dart';
    const Color customColor = Colors.purple;
    const List<Color> customThemes = [
      customColor, 
      Colors.blue,
      Colors.cyan,
      Colors.teal,
      Colors.pink,
      Colors.red,
      Colors.orange,
      Colors.yellow,
    ];
    class AppTheme {
       final int selectedColor;
       final bool isDarkMode;
       AppTheme({
    this.selectedColor = 0,
    this.isDarkMode = true,
  }) : assert(selectedColor >= 0 && selectedColor < customThemes.length,
            'La selección de color no cumple con el rango de 0 asta ${customThemes.length - 1}');


      ThemeData tema ()
            => ThemeData(   useMaterial3: true,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: customThemes[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
      } 