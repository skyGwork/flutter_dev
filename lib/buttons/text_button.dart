import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextButton'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFF321A3)),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('TextButton Type 01'),
            ),
            const SizedBox(height: 20),
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
              onPressed: () {},
              child: Text(
                'TextButton type 02',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) return Colors.red;
                  return null; // Defer to the widget's default.
                }),
              ),
              onPressed: () {},
              child: const Text('TextButton type 03 '),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {},
              child: const Text('TextButton type 04'),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
                onSurface: Colors.red,
              ),
              onPressed: null,
              child: const Text('TextButton type 05'),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) return Colors.red;
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.green;
                  }
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.blue;
                  }
                  return null; // Defer to the widget's default.
                }),
              ),
              onPressed: () {},
              child: const Text('TextButton with custom overlay colors'),
            )
          ],
        ),
      )),
    );
  }
}
