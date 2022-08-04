import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/color_manager.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.roboto().fontFamily,
        appBarTheme: AppBarTheme(
          // color: Colors.red,
          // color: ColorManager.primary,
          // backgroundColor: Colors.red,
          elevation: 10,
          centerTitle: true,

          iconTheme: IconThemeData(
            color: ColorManager.white,
          ),

          titleTextStyle: TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: ColorManager.white,
            letterSpacing: 1.2,
          ),
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 20,
                color: ColorManager.dark,
              ),
            ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
