import 'package:flutter/material.dart';
// import '../search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text('跳转搜索页面'),
          onPressed: () {
            // Navigator.of(context).push(
            //     MaterialPageRoute(builder: (context) => const SearchPage()));
            Navigator.pushNamed(context, '/search', arguments: {"id": '123'});
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          child: const Text('跳转到商品页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/product');
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
