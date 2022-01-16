import 'package:flutter/material.dart';
import '../form.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text('跳转表单页面并传值'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => FormPage(title: 'zzchm表单页面'),
            ));
          },
        )
      ],
    );
  }
}
