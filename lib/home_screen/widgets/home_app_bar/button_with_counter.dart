import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:sizer/sizer.dart';

class ButtonWithCounter extends StatelessWidget {
  const ButtonWithCounter({
    Key? key,
    required this.icon,
    required this.number,
    required this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final int number;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(icon),
          iconSize: SizerUtil.deviceType == DeviceType.mobile ? 30 : 5.w,
          color: kBlack.withOpacity(0.9),
          onPressed: onPressed,
        ),
        if (number > 0)
          Positioned(
            left: 5,
            top: 3,
            child: Container(
              width: SizerUtil.deviceType == DeviceType.mobile ? 13 : 2.1.w,
              height: SizerUtil.deviceType == DeviceType.mobile ? 13 : 2.1.w,
              decoration: BoxDecoration(
                color: kErrorColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  number.toString(),
                  style: TextStyle(
                    height: 1.3,
                    fontSize: SizerUtil.deviceType == DeviceType.mobile
                        ? 7.5
                        : 3.5.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
