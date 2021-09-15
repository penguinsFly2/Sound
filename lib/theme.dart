import 'package:flutter/material.dart';

ThemeData getTheme(BuildContext context) => ThemeData(
      fontFamily: 'SourceSans',
      primaryColor: Colors.white,
      accentColor: Colors.black,
      focusColor: Theme.of(context).primaryColor,
      buttonColor: Theme.of(context).primaryColor,
      splashColor: Colors.grey,
      hoverColor: Theme.of(context).primaryColor,
      backgroundColor: Theme.of(context).primaryColor,
      textTheme: TextTheme(
        button: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
        ),
      ),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: Colors.grey[350]!,
            width: 0.5,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(
            Colors.grey[200],
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusColor: Colors.black,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );
