import 'package:flutter/material.dart';
import 'package:wedemy/constants/colors.dart';


var lightTheme = ThemeData(
  useMaterial3: true,


  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: backgroudColor,
    secondary: secondryColor,
    onSecondary: backgroudColor,
    error: Colors.red,
    onError: fontColor,
    background: backgroudColor,
    onBackground: fontColor,
    surface: backgroudColor,
    onSurface: fontColor,
    onPrimaryContainer: secondLebelColor,
  ),


  textTheme: const TextTheme(
    headlineLarge: TextStyle(

      fontSize: 30,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: TextStyle(

      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(

      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(

      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(

      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle(

        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: lebelColor),
    labelMedium: TextStyle(

        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: lebelColor),
    labelSmall: TextStyle(

        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: lebelColor),
  ),
);