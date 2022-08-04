// import 'dart:async';

import 'package:flutter/material.dart';
import '../buttons/elevated_button.dart';
import '../buttons/outlined_button.dart';
import '../buttons/text_button.dart';
import '../config/const/color_manager.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyTextButton()),
                      );
                    },
                    child: Text(
                      'MyTextButton',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  const SizedBox(width: 50),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyOutLinedButton()),
                      );
                    },
                    child: Text(
                      'MyOutLinedButton',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  const SizedBox(width: 50),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyElevatedButton()),
                      );
                    },
                    child: Text(
                      'MyElevatedButton',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
