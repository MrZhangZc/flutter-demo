import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;

  FormPage({this.title = '表单'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Text('返回'),
          onPressed: () => {Navigator.of(context).pop()}),
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('zzc'),
            subtitle: Text('hm'),
          ),
          ListTile(
            title: Text('zzc'),
            subtitle: Text('hm'),
          ),
          ListTile(
            title: Text('zzc'),
            subtitle: Text('hm'),
          ),
          ListTile(
            title: Text('zzc'),
            subtitle: Text('hm'),
          ),
          ListTile(
            title: Text('zzc'),
            subtitle: Text('hm'),
          ),
          ListTile(
            title: Text('zzc'),
            subtitle: Text('hm'),
          )
        ],
      ),
    );
  }
}
