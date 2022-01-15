import 'package:flutter/material.dart';
import './res/listData.dart';

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
        body: const HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(listData[index]["title"],
              style: const TextStyle(fontSize: 16, color: Colors.blue)),
          subtitle: Text(listData[index]["author"]),
          leading: Image.network(listData[index]["imageUrl"]),
        );
      },
    );
  }
}
