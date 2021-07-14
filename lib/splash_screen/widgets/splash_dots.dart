import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:mix_cart_app/splash_screen/cubit/splash_cubit.dart';
import 'package:sizer/sizer.dart';

class SplashDots extends StatelessWidget {
  const SplashDots({Key? key, required this.length}) : super(key: key);
  final int length;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, int>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            length,
            (index) => _buildDot(index: index, page: state),
          ).reversed.toList(),
        );
      },
    );
  }

  Widget _buildDot({required int index, required int page}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 2.w),
      height: 1.5.w,
      width: page == index ? 5.w : 1.5.w,
      decoration: BoxDecoration(
        color: page == index ? kSecondaryColor : Colors.grey.shade400,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
