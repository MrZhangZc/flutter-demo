import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  TextFieldDemoPage({Key? key}) : super(key: key);

  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            TextField(),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  hintText: '请输入姓名', border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextField(
              maxLength: 3,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: '请输入姓名',
                border: OutlineInputBorder(),
                labelText: "姓名",
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: '请输入密码',
                  border: OutlineInputBorder()),
            )
          ],
        ),
      ),
    );
  }
}
