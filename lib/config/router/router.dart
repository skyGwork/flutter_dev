import 'package:flutter/material.dart';

import '../../screens/landign_page.dart';
import '../../screens/page404.dart';
import 'path.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RoutePath.landingPage:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LandingPage(),
      );

    
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const PageNotFound(),
      );
  }
}
