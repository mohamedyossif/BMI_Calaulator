import 'package:flutter/material.dart';

Color KIconColor = Colors.grey;

TextStyle KTextStyleTitle =
    TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold);

Color KInactiveColor = Colors.grey;

Color KactiveColor = Colors.green;

TextStyle KTextBMI = TextStyle(fontSize: 25,color: Colors.white);

ButtonStyle KButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(
    Colors.black,
  ),
  shape: MaterialStateProperty.all<CircleBorder>(
    CircleBorder(),
  ),
);

TextStyle KTextbody = TextStyle(fontWeight: FontWeight.bold, fontSize: 30);

ThemeData KThemData = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    brightness: Brightness.dark,
  ),
);

TextStyle KInterpertationStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
TextStyle KResultTitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 35,
  fontWeight: FontWeight.bold,
);

