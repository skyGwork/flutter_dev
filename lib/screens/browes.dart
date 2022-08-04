import 'package:flutter/material.dart';

class Browse extends StatelessWidget {
  const Browse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'here you go',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 100),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Previous'),
            )
          ],
        ),
      ),
    );
  }
}
