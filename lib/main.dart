// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// import 'config/theme/theme_context.dart';
import 'config/theme/theme_context.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme(context),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: const Text('MyApp')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  height: 100,
                  child: Text(
                    'Working On My App',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
