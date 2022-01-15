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
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.yellow,
            image: const DecorationImage(
                image: NetworkImage(
                    "https://file.lihailezzc.com/resource/e55e8ebe9db0189fc7f02c117ead3d08.jpg"),
                fit: BoxFit.cover),
            // borderRadius: BorderRadius.all(Radius.circular(150))),
            borderRadius: BorderRadius.circular(150)),
      ),
    );
  }
}
