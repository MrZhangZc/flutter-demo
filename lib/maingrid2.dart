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

  List<Widget> _getListData() {
    List<Widget> list = [];
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        child: Text('zzchm$i'),
        // padding: const EdgeInsets.all(10),
        // margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        color: Colors.blueGrey,
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 20, // 水平
        mainAxisSpacing: 20, // 垂直
        padding: const EdgeInsets.all(10),
        childAspectRatio: 0.8, // 修改宽高比
        children: _getListData());
  }
}
