import 'package:flutter/material.dart';

import '../../screens/404.dart';
import '../../screens/browes.dart';
import '../../screens/landign_page.dart';
import '../../screens/signin_options/signin.dart';
import '../../screens/signin_options/signup.dart';
import 'path.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RoutePath.landing:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LandingPage(),
      );

    case RoutePath.signIn:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SignIn(),
      );

    case RoutePath.browse:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Browse(),
      );

    case RoutePath.signUp:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SignupPage(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const PageNotFound(),
      );
  }
}
