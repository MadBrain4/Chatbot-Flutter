import 'package:flutter/material.dart';

const Color _customColor = Color(
  0xFF49149F,

);
const List<Color> _colorTheme = [
  _customColor,
  Color.fromARGB(255, 146, 85, 85),
  Color.fromARGB(255, 246, 248, 111),
  Color.fromARGB(255, 3, 158, 230),
  Colors.pink,
  Colors.purple,
];

class AppTheme {

  final int selectedColor; 

  AppTheme({required this.selectedColor}) : assert(selectedColor >= 0 && selectedColor < _colorTheme.length);

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedColor],
    );
  }
}