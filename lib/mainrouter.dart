import 'package:flutter/material.dart';
import './pages/tabs.dart';
import './pages/form.dart';
import './pages/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Tabs(),
      routes: {
        '/form': (context) => FormPage(),
        '/search': (context) => const SearchPage()
      },
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
