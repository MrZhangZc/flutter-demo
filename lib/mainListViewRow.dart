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
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 180,
            color: Colors.red,
            child: ListView(
              children: [
                Image.network(
                    "https://file.lihailezzc.com/resource/e55e8ebe9db0189fc7f02c117ead3d08.jpg"),
                const Text("zzchm")
              ],
            ),
          ),
          Container(
            width: 180,
            color: Colors.green,
          ),
          Container(
            width: 180,
            color: Colors.blue,
          ),
          Container(
            width: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            color: Colors.green,
          ),
          Container(
            width: 180,
            color: Colors.blue,
          ),
          Container(
            width: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            color: Colors.green,
          ),
          Container(
            width: 180,
            color: Colors.blue,
          ),
          Container(
            width: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            color: Colors.green,
          ),
          Container(
            width: 180,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
