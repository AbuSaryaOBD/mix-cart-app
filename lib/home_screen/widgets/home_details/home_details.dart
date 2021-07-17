import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:sizer/sizer.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        height: 67.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
        ),
      ),
    );
  }
}
