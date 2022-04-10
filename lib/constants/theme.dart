import 'package:flutter/material.dart';

//PRIMARY COLORS
Color kPrimaryColor = Colors.grey.shade700;
Color kPrimaryColorLight = Colors.grey.shade300;
Color kPrimaryColorDark = Colors.black;

//THEME DATA
ThemeData themeData() {
  final TextStyle _textStyle = TextStyle(
    fontFamily: 'Roboto',
    color: kPrimaryColorLight,
  );

  return ThemeData(
    canvasColor: kPrimaryColorDark,
    primaryColor: kPrimaryColor,
    primaryColorLight: kPrimaryColorLight,
    primaryColorDark: kPrimaryColorDark,
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      headline1: _textStyle,
      headline2: _textStyle,
      headline3: _textStyle,
      headline4: _textStyle,
      headline5: _textStyle,
      headline6: _textStyle.copyWith(fontWeight: FontWeight.bold),
      subtitle1: _textStyle.copyWith(color: kPrimaryColorLight),
      subtitle2: _textStyle.copyWith(fontWeight: FontWeight.bold),
      bodyText1: _textStyle,
      bodyText2: _textStyle.copyWith(fontWeight: FontWeight.bold),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}
