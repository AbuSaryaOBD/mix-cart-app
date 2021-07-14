import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:mix_cart_app/core/routes.dart';
import 'package:mix_cart_app/splash_screen/splash_screen.dart';
import 'package:sizer/sizer.dart';

class MixCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Mix Cart',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'Cairo',
            textTheme: TextTheme(
              bodyText1: TextStyle(color: kTextColor),
              bodyText2: TextStyle(color: kTextColor),
            ),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: SplashPage.routeName,
          routes: routes,
        );
      },
    );
  }
}
