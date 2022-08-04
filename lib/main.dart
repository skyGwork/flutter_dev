import 'package:flutter/material.dart';

// import 'config/theme/theme_context.dart';
import 'config/router/path.dart';
import 'config/theme/theme_manager.dart';
import 'screens/browes.dart';
import 'screens/landign_page.dart';
import 'screens/signin_options/signin.dart';
import 'screens/signin_options/signup.dart';
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
      initialRoute: RoutePath.splash,
      routes: {
        RoutePath.splash: ((context) => const SplashScreen()),
        RoutePath.landing: ((context) => const LandingPage()),
        RoutePath.signIn: ((context) => const SignIn()),
        RoutePath.browse: ((context) => const Browse()),
        RoutePath.signUp: ((context) => const SignupPage()),
      },
      // home: const SplashScreen(),
    );
  }
}
