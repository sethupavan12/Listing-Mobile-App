import 'package:flutter/material.dart';
import './products.dart';

// Class that inits the Stateful Widget
class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];
  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: EdgeInsets.all(10.0),
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _products.add('Advanced Food Tester');
                });
              },
              child: Text('Add Product'))),
      Products(_products)
    ]);
  }
}
