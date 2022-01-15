import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('zzchm'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

// ignore: must_be_immutable
class HomeContent extends StatelessWidget {
  List list = [];
  HomeContent({Key? key}) : super(key: key) {
    for (var i = 0; i < 20; i++) {
      list.add('zzchm$i');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index],
              style: const TextStyle(fontSize: 24, color: Colors.blue)),
        );
      },
    );
  }
}
