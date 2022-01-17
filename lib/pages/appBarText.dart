import 'package:flutter/material.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('测试bar'),
        backgroundColor: Colors.orange,
        centerTitle: true, // 居中现实
        leading: IconButton(
            onPressed: () {
              print('123');
            },
            icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: const Text('测试bar内容'),
    );
  }
}
