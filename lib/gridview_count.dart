import 'package:flutter/material.dart';

class GridviewCountWidget extends StatelessWidget {
  const GridviewCountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GridView.count constructor '),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
          childAspectRatio: 3 / 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: const Text('A'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[200],
              child: const Text('B'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[300],
              child: const Text('C'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[400],
              child: const Text('D'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[500],
              child: const Text('E'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[600],
              child: const Text('F'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[700],
              child: const Text('G'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[800],
              child: const Text('H'),
            ),
          ],
        ));
  }
}
