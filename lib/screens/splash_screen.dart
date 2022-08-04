// import 'dart:async';

import 'dart:async';

import 'package:flutter/material.dart';
import '../config/const/color_manager.dart';
import '../config/router/path.dart';
import '../config/widgets/sel_text.dart';
import 'landign_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, RoutePath.landing));
    super.initState();
  }

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
            ],
          ),
        ),
      ),
    );
  }
}
