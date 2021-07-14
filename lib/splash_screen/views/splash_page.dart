import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/size_config.dart';
import 'package:mix_cart_app/splash_screen/widgets/widgets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SplashBody(),
    );
  }
}
