import 'package:flutter/material.dart';
import 'package:mix_cart_app/splash_screen/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key, required this.splashes}) : super(key: key);
  final List<Map<String, String>> splashes;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 25),
          Image.asset(
            'assets/images/mix_title.png',
            width: 75.w,
          ),
          SizedBox(
            width: 75.w,
            child: Divider(),
          ),
          SplashSlides(splashes: splashes),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Spacer(flex: 2),
                SplashDots(length: splashes.length),
                Spacer(flex: 3),
                SplashButtons(),
                Spacer(flex: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
