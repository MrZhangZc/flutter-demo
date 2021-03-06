import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('商品页面'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('跳转到商品详情页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/productInfo',
                arguments: {'pid': '123456'});
          },
        ),
      ),
    );
  }
}
