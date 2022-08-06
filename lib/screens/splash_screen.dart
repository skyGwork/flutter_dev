// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_explore/models/landingpage_args.dart';
import '../config/const/color_manager.dart';
import '../config/router/path.dart';
import '../widgets/sel_text.dart';
import 'landign_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Material(
        color: Colors.white,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/img/sellogo.png',
                height: 100,
              ),
              const SizedBox(height: 30),
              const SelText(),
              const SizedBox(height: 50),
              CircularProgressIndicator(
                color: ColorManager.purple,
              ),
              const SizedBox(height: 100),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF07083E)),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.blue.withOpacity(.3);
                      }
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed)) {
                        return Colors.blue.withOpacity(0.15);
                      }
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RoutePath.landingPage,
                    arguments: LandingPageArgs(
                      note: 'Learn Without Limitations',
                      quote:
                          'Learning is training of mind to think expressive.',
                    ),
                  );
                },
                child: Text(
                  'Explore',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
