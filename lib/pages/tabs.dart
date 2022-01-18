import 'package:flutter/material.dart';
import './tabs/category.dart';
import './tabs/home.dart';
import './tabs/setting.dart';
import './tabs/mine.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List _pageList = [
    const HomePage(),
    const CategoryPage(),
    const SettingPage(),
    const MinePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('zzchm'),
      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 24,
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed, //可以配置大于3个
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts), label: '我的')
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("zzchm"),
                    accountEmail: Text("jiayouzzc@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://file.lihailezzc.com/resource/e55e8ebe9db0189fc7f02c117ead3d08.jpg"),
                    ),
                    decoration: BoxDecoration(
                        // color: Colors.yellow
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://file.lihailezzc.com/resource/e55e8ebe9db0189fc7f02c117ead3d08.jpg"),
                            fit: BoxFit.cover)),
                    otherAccountsPictures: [],
                  ),
                )
              ],
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('首页'),
            ),
            const Divider(),
            ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: const Text('我的空间'),
              onTap: () {
                Navigator.of(context).pop(); // 隐藏侧边
                Navigator.pushNamed(context, '/product');
              },
            ),
            const Divider(),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置'),
            )
          ],
        ),
      ),
      endDrawer: const Drawer(
        child: Text('right'),
      ),
    );
  }
}
