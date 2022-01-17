import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final arguments;
  // ignore: use_key_in_widget_constructors
  const SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('搜索页面'),
      ),
      body: Text(' 我是搜索页body${arguments != null ? arguments["id"] : '0'}'),
    );
  }
}
