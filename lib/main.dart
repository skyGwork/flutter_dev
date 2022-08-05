import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'categories_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      // themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
        ),
      ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      home: const CategoriesScreen(),
    );
  }
}
