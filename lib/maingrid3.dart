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
    var tempData = listData.map((value) => Container(
          child: Column(
            children: [
              Text(
                value["title"],
                style: const TextStyle(
                    fontSize: 24, color: Colors.deepPurpleAccent),
              ),
              const SizedBox(height: 20),
              Text(
                value["author"],
                style: const TextStyle(fontSize: 14, color: Colors.teal),
              )
            ],
          ),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.deepOrange, width: 1),
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://file.lihailezzc.com/resource/e55e8ebe9db0189fc7f02c117ead3d08.jpg"),
                  fit: BoxFit.cover)),
        ));
    return tempData.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 20, // 水平
        mainAxisSpacing: 20, // 垂直
        padding: const EdgeInsets.all(10),
        // childAspectRatio: 0.8, // 修改宽高比
        children: _getListData());
  }
}
