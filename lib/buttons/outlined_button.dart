import 'package:flutter/material.dart';

class MyOutLinedButton extends StatelessWidget {
  const MyOutLinedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OutlinedButton'),
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
        children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
                side: const BorderSide(width: 2, color: Colors.red),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OutlinedButton with custom shape and border'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
                side: MaterialStateProperty.resolveWith<BorderSide>(
                    (Set<MaterialState> states) {
                  final Color color = states.contains(MaterialState.pressed)
                      ? Colors.blue
                      : Colors.red;
                  return BorderSide(color: color, width: 2);
                }),
              ),
              onPressed: () {},
              child: Text('OutlinedButton with custom shape and border'),
            ),
        ],
      ),
          )),
    );
  }
}
