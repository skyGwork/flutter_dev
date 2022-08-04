import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ElevatedButton'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                  ' 01-ElevatedButton with custom foreground/background'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(onSurface: Colors.red),
              onPressed: () {},
              child:
                  const Text('02-ElevatedButton with custom disabled colors'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.red;
                  }
                  return null; // Defer to the widget's default.
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.blue;
                  }
                  return null; // Defer to the widget's default.
                }),
              ),
              onPressed: () {},
              child:
                  const Text('03-ElevatedButton with custom disabled colors'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 2),
              onPressed: () {},
              child: const Text('04-ElevatedButton with custom elevations'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.resolveWith<double?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return 16;
                  }
                  return null;
                }),
              ),
              onPressed: () {},
              child: const Text('05-ElevatedButton with a custom elevation'),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
