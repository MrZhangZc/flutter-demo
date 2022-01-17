import 'package:flutter/material.dart';
import './pages/tabs.dart';
import './routers/routers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: const Tabs(),
        // theme: ThemeData(primarySwatch: Colors.yellow),
        initialRoute: '/',
        onGenerateRoute: onGenerateRoute);
  }
}
