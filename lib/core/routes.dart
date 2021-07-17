import 'package:flutter/material.dart';
import 'package:mix_cart_app/home_screen/home_screen.dart';
import 'package:mix_cart_app/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
