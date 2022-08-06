import 'package:flutter/material.dart';
import 'package:flutter_explore/screens/landign_page.dart';

// import 'config/theme/theme_context.dart';
import 'config/router/path.dart';
import 'config/theme/theme_manager.dart';
import 'screens/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: getApplicationTheme(),
      routes: {
        RoutePath.landingPage: (context) => const LandingPage(),
      },
      home: const SplashScreen(),
    );
  }
}
