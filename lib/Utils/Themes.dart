
import 'package:flutter/material.dart';

class Styles {
  static var LightThemeStyle = ThemeData(
    // useMaterial3: true,
      scaffoldBackgroundColor:Color(0xffFAFAFA),
      primaryColor: Color(0xffB59F7C),
      cardTheme: CardTheme(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
      appBarTheme: AppBarTheme(
        elevation: 2,
        backgroundColor: Colors.white,
      ),
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      colorScheme: ColorScheme.light(
          brightness: Brightness.light,
          primary: Colors.black,
          onPrimary: Colors.blue,
          secondary: Colors.orange,
          onSecondary: Colors.pink,
          error: Colors.red,
          onError: Colors.red,
          background: Colors.white,
          onBackground: Colors.black45,
          surface: Colors.white,
          onSurface: Color(0xffF6F6F6)),


      textTheme: TextTheme(
        titleSmall: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w500
        ),
        titleMedium: TextStyle(
            fontSize: 17,
            color: Colors.black
        ),
        titleLarge: TextStyle(
            fontSize: 18,
            color: Colors.black
        ),
        bodySmall: TextStyle(
            fontSize: 13,
            color: Colors.black
        ),
        bodyMedium: TextStyle(
            fontSize: 15,
            color: Colors.black
        ),
        bodyLarge: TextStyle(
            fontSize: 18,
            color: Colors.black
        ),
        labelSmall: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black
        ),
        labelMedium: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black
        ),
        labelLarge: TextStyle(
            fontSize: 20,
            color: Colors.black
        ),

      )
  );
  static var DarkThemeStyle = ThemeData(
    //useMaterial3: true,
      primaryColor: Color(0xffF7C623),
      appBarTheme: AppBarTheme(
        elevation: 2,
        backgroundColor:  Color(0xFF181819),
      ),
      dividerColor: Colors.grey,
      cardTheme: CardTheme(
          color: Color(0xFF181819),
          shape : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),
      iconTheme: IconThemeData(color: Colors.white),
      scaffoldBackgroundColor:Color(0xFF0B0B0C),
      indicatorColor: Color(0xff0E1D36),
      hintColor: Color(0xff280C0B),
      highlightColor: Color(0xff372901) ,
      hoverColor: Color(0xff3A3A3B) ,
      backgroundColor: Color(0xFF181819),
      colorScheme: ColorScheme.dark(
        brightness: Brightness.light,
        primary: Colors.black,
        onPrimary: Color(0xffF7C623),
        secondary: Colors.orange,
        onSecondary: Colors.pink,
        error: Colors.red,
        onError: Colors.red,
        background:Color(0xFF181819),
        onBackground: Colors.black45,
        surface: Colors.black,
        onSurface: Color(0xFF181819),
      ),

      textTheme: TextTheme(
        titleSmall: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.w500
        ),
        titleMedium: TextStyle(
            fontSize: 17,
            color: Colors.white
        ),
        titleLarge: TextStyle(
            fontSize: 18,
            color: Colors.white
        ),
        bodySmall: TextStyle(
            fontSize: 13,
            color: Colors.white
        ),
        bodyMedium: TextStyle(
            fontSize: 15,
            color: Colors.white
        ),
        bodyLarge: TextStyle(
            fontSize: 18,
            color: Colors.white
        ),
        labelSmall: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.white
        ),
        labelMedium: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.white
        ),
        labelLarge: TextStyle(
            fontSize: 20,
            color: Colors.white
        ),

      )
  );
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return isDarkTheme ? DarkThemeStyle : LightThemeStyle;
  }
}