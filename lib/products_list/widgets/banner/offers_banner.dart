import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:mix_cart_app/products_list/widgets/banner/plasma_background.dart';
import 'package:sizer/sizer.dart';

class OffersBanner extends StatelessWidget {
  const OffersBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizerUtil.deviceType == DeviceType.mobile ? 11.h : 15.h,
      width: 90.w,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: kRadiusRounded2,
      ),
      child: PlasmaBackground(
        child: Center(
          child: Container(
            width: 80.w,
            child: Text.rich(
              TextSpan(
                text: 'كوبونات خصم\n',
                style: TextStyle(
                  color: Colors.white,
                  height: 1.3,
                  fontSize: 10.sp,
                ),
                children: [
                  TextSpan(
                    text: 'حسم 20% لمدة شهر',
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
