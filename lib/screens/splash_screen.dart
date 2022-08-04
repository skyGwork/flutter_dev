// import 'dart:async';

import 'package:flutter/material.dart';
import '../config/const/color_manager.dart';
import '../widgets/drawer.dart';
import '../widgets/sel_text.dart';

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
      appBar: AppBar(),
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
            ],
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
