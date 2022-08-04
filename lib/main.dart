import 'package:flutter/material.dart';

// import 'config/theme/theme_context.dart';
import 'config/theme/theme_manager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //OR => type two from (theme_manager)
      theme: getApplicationTheme(),

      //OR => type three from (theme_context_manager)
      // theme: AppTheme.lightTheme(context),

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
        body: Center(
          child: SizedBox(
            height: 100,
            child: Text('Working On My App',
                style: Theme.of(context).textTheme.headline1),
          ),
        ),
      ),
    );
  }
}
