// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('create an account',
            style: Theme.of(context).textTheme.headline1),
      ),
    );
  }
}
