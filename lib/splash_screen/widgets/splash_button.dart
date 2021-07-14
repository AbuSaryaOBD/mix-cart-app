import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:mix_cart_app/splash_screen/cubit/splash_cubit.dart';

class SplashButton extends StatelessWidget {
  const SplashButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          fixedSize: Size(
            getProperScreenWidth(175),
            getProperScreenHeight(55),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
      onPressed: () {
        context.read<SplashCubit>().next();
      },
      child: Text(
        'التالي',
        textWidthBasis: TextWidthBasis.longestLine,
        style: TextStyle(
          fontSize: getProperScreenWidth(15),
          fontWeight: FontWeight.bold,
          color: kSecondaryColor,
        ),
      ),
    );
  }
}
