import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Map> myProducts = List.generate(
        100000, (index) => {"id": index, "name": "Product $index"}).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 40,
              mainAxisSpacing: 20),
          itemCount: myProducts.length,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(myProducts[index]["name"]),
            );
          }),
    );
  }
}
