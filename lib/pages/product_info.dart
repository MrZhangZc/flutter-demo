import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {
  Map arguments = {"pid": 0};

  ProductInfoPage({required this.arguments});

  @override
  _ProductInfoPageState createState() =>
      _ProductInfoPageState(arguments: this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  Map arguments;

  _ProductInfoPageState({required this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('商品详情页'),
      ),
      body: Text("pid=${arguments["pid"]}"),
    );
  }
}
