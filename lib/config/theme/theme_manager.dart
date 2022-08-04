import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primarySwatch: Colors.blueGrey,

    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blueGrey,
      // accentColor: Colors.red,
    ),

    // fontFamily: 'Quicksand',
    // fontFamily: GoogleFonts.roboto().fontFamily,
    primaryTextTheme: GoogleFonts.latoTextTheme(),

    appBarTheme: AppBarTheme(
      // color: Colors.red,
      // backgroundColor:Colors.red,
      // color:ColorManager.primary,
      elevation: 10,
      centerTitle: true,

      iconTheme: IconThemeData(
        color: ColorManager.white,
      ),

      titleTextStyle: TextStyle(
        // fontFamily: 'Quicksand',
        fontWeight: FontWeight.bold,
        color: ColorManager.white,
        fontSize: 20,
        letterSpacing: 1.2,
      ),
    ),

    textTheme: ThemeData.light().textTheme.copyWith(
          headline1: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: ColorManager.dark,
          ),
          headline5: TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 20,
            color: ColorManager.dark,
          ),
        ),
  );
}
