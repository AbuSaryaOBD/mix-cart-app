import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:sizer/sizer.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -2.5.h,
      right: 3.w,
      child: GestureDetector(
        child: Card(
          color: kOrange,
          child: Padding(
            padding: EdgeInsets.all(
                SizerUtil.deviceType == DeviceType.tablet ? 1.w : 2.w),
            child: Icon(
              Icons.menu,
              color: kWhite,
              size: SizerUtil.deviceType == DeviceType.tablet ? 17.sp : 25.sp,
            ),
          ),
        ),
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    );
  }
}
