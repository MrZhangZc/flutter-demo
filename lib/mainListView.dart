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
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Image.network(
          "https://file.lihailezzc.com/resource/e55e8ebe9db0189fc7f02c117ead3d08.jpg",
          height: 300,
          width: 300,
          fit: BoxFit.cover,
        ),
        Container(
          child: const Text(
            'zzchm',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          height: 50,
          padding: const EdgeInsets.all(10),
        ),
        Image.network(
          "https://file.lihailezzc.com/resource/e55e8ebe9db0189fc7f02c117ead3d08.jpg",
          height: 300,
          width: 300,
          fit: BoxFit.cover,
        ),
        Container(
          child: const Text(
            'zzchm',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          height: 50,
          padding: const EdgeInsets.all(10),
        ),
        Image.network(
          "https://file.lihailezzc.com/resource/e55e8ebe9db0189fc7f02c117ead3d08.jpg",
          height: 300,
          width: 300,
          fit: BoxFit.cover,
        ),
        Container(
          child: const Text(
            'zzchm',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          height: 50,
          padding: const EdgeInsets.all(10),
        ),
        Image.network(
          "https://file.lihailezzc.com/resource/e55e8ebe9db0189fc7f02c117ead3d08.jpg",
          height: 300,
          width: 300,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
