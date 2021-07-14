import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:mix_cart_app/splash_screen/cubit/splash_cubit.dart';
import 'package:sizer/sizer.dart';

class SplashButtons extends StatelessWidget {
  const SplashButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
          onPressed: () {
            context.read<SplashCubit>().next();
          },
          icon: RotatedBox(
            quarterTurns: 2,
            child: Icon(
              Icons.double_arrow,
              color: kSecondaryColor,
            ),
          ),
          label: Text(
            'تخط',
            style: TextStyle(
              fontSize: 3.w,
              fontWeight: FontWeight.bold,
              color: kSecondaryColor,
            ),
          ),
        ),
        SizedBox(),
        TextButton(
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              fixedSize: Size(
                30.w,
                5.5.h,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
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
        ),
      ],
    );
  }
}
