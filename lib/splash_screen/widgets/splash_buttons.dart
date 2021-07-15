import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:mix_cart_app/products_list/products_list.dart';
import 'package:mix_cart_app/splash_screen/cubit/splash_cubit.dart';
import 'package:sizer/sizer.dart';

class SplashButtons extends StatelessWidget {
  const SplashButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _nextButton(context),
          _skipButton(context),
        ],
      ),
    );
  }

  TextButton _nextButton(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: kPrimaryColor,
        fixedSize: Size(30.w, 5.5.h),
        shape: RoundedRectangleBorder(borderRadius: kRadiusEllipsis),
      ),
      onPressed: () {
        context.read<SplashCubit>().next();
      },
      child: Text(
        'التالي',
        textWidthBasis: TextWidthBasis.longestLine,
        style: TextStyle(
          height: SizerUtil.deviceType == DeviceType.tablet ? 1 : null,
          fontSize: 3.w,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  GestureDetector _skipButton(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Text(
            'تخط',
            style: TextStyle(
              fontSize: 3.w,
              fontWeight: FontWeight.bold,
              color: kSecondaryColor,
            ),
          ),
          SizedBox(width: 3),
          RotatedBox(
            quarterTurns: 2,
            child: Icon(
              Icons.double_arrow,
              color: kSecondaryColor,
            ),
          )
        ],
      ),
      onTap: () =>
          Navigator.pushReplacementNamed(context, ProductsList.routeName),
    );
  }
}
