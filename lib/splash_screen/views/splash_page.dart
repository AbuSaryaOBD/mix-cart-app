import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mix_cart_app/splash_screen/cubit/splash_cubit.dart';
import 'package:mix_cart_app/splash_screen/widgets/widgets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const String routeName = '/SplashPage';

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> _splashes = [
      {
        'desc': 'مرحبا بكم في مكس كارت\nالخيار الأفضل للتسوق الالكتروني',
        'image': 'assets/images/mix_splash_1.png',
      },
      {
        'desc': 'تلبية كافة الاحتياجات\n...المكتب، المناسبات، الأسرة...',
        'image': 'assets/images/mix_splash_2.png',
      },
      {
        'desc': 'التسوق بأسهل طريقة',
        'image': 'assets/images/mix_splash_3.png',
      },
    ];

    return BlocProvider(
      create: (context) => SplashCubit(_splashes.length),
      child: Scaffold(
        body: SplashBody(splashes: _splashes),
      ),
    );
  }
}
