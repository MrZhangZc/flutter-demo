import 'package:flutter/material.dart';
import './pages/tabs.dart';
import './pages/form.dart';
import './pages/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routers = {
    '/form': (context) => FormPage(),
    '/search': (context, {arguments}) => SearchPage(arguments: arguments)
  };

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const Tabs(),
        theme: ThemeData(primarySwatch: Colors.blue),
        // routes: {
        //   '/form': (context) => FormPage(),
        //   '/search': (context) => const SearchPage()
        // },
        onGenerateRoute: (RouteSettings settings) {
          final String? name = settings.name;
          final Function pageContentBuilder = routers[name] as Function;
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context, arguments: settings.arguments));
            return route;
          } else {
            final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context));
            return route;
          }
        });
  }
}
