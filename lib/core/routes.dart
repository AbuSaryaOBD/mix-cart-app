import 'package:flutter/material.dart';
import 'package:mix_cart_app/products_list/products_list.dart';
import 'package:mix_cart_app/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  ProductsList.routeName: (context) => ProductsList(),
};
