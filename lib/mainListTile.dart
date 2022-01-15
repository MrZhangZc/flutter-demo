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
        ListTile(
          leading: Image.network(
              "https://file.lihailezzc.com/resource/e55e8ebe9db0189fc7f02c117ead3d08.jpg"),
          title: const Text(
            'zzc',
            style: TextStyle(fontSize: 24, color: Colors.green),
          ),
          subtitle: const Text('hm'),
          trailing: const Icon(
            Icons.adb_rounded,
            color: Colors.blue,
          ),
        ),
        ListTile(
          leading: Image.network(
              "https://file.lihailezzc.com/resource/e55e8ebe9db0189fc7f02c117ead3d08.jpg"),
          title: const Text(
            'zzc',
            style: TextStyle(fontSize: 24, color: Colors.green),
          ),
          subtitle: const Text('hm'),
        ),
        ListTile(
          leading: Image.network(
              "https://file.lihailezzc.com/resource/e55e8ebe9db0189fc7f02c117ead3d08.jpg"),
          title: const Text(
            'zzc',
            style: TextStyle(fontSize: 24, color: Colors.green),
          ),
          subtitle: const Text('hm'),
        ),
        ListTile(
          leading: Image.network(
              "https://file.lihailezzc.com/resource/e55e8ebe9db0189fc7f02c117ead3d08.jpg"),
          title: const Text(
            'zzc',
            style: TextStyle(fontSize: 24, color: Colors.green),
          ),
          subtitle: const Text('hm'),
        ),
      ],
    );
  }
}
