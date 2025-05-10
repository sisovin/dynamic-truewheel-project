import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        color: Colors.blue,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.black54),
        headline1: TextStyle(color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold),
        headline3: TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
        headline4: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
        headline5: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white70),
        headline1: TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
        headline3: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
        headline4: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        headline5: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
