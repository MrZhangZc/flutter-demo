import 'package:flutter/material.dart';

import '../pages/form.dart';
import '../pages/search.dart';
import '../pages/tabs.dart';
import '../pages/product.dart';
import '../pages/product_info.dart';

final routers = {
  '/': (context) => const Tabs(),
  '/form': (context) => FormPage(),
  '/product': (context) => const ProductPage(),
  '/productInfo': (context, {arguments}) =>
      ProductInfoPage(arguments: arguments),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments)
};

// ignore: prefer_function_declarations_over_variables
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  final Function pageContentBuilder = routers[name] as Function;
  if (settings.arguments != null) {
    final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments));
    return route;
  } else {
    final Route route =
        MaterialPageRoute(builder: (context) => pageContentBuilder(context));
    return route;
  }
};
