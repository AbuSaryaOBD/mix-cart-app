import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:mix_cart_app/splash_screen/widgets/widgets.dart';

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
            width: getProperScreenWidth(265),
          ),
          SizedBox(
            width: getProperScreenWidth(265),
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
                SplashButton(),
                Spacer(flex: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
