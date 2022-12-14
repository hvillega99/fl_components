import 'package:flutter/material.dart'
    show
        AppBarTheme,
        BorderRadius,
        BorderSide,
        Color,
        Colors,
        ElevatedButton,
        ElevatedButtonThemeData,
        FloatingActionButtonThemeData,
        InputDecorationTheme,
        OutlineInputBorder,
        Radius,
        StadiumBorder,
        TextButton,
        TextButtonThemeData,
        TextStyle,
        ThemeData;

class AppTheme {
  static const Color primaryColor = Colors.lightGreen;

  static ThemeData light = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0,
    ),
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primaryColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor, foregroundColor: Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: primaryColor, elevation: 0, shape: const StadiumBorder())),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primaryColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        )),
  );
}
