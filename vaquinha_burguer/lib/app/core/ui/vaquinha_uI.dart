import 'package:flutter/material.dart';

class VaquinhaUI {
  VaquinhaUI._(); // tipo estatico
  static final ThemeData theme = ThemeData(
    primaryColor: const Color(0xFF007021),
    primaryColorDark: const Color(0xFF00343F),
    fontFamily: 'mplus1',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF007021),
        textStyle: const TextStyle(fontFamily: 'mplus1'),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      selectedIconTheme: const IconThemeData(color: Colors.black),
      selectedLabelStyle: textBold,
      unselectedItemColor: Colors.grey[400],
      unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
    ),
  );
  static const TextStyle textBold = TextStyle(fontWeight: FontWeight.bold);
}
