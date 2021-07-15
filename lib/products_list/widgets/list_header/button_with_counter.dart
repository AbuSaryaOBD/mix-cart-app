import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:sizer/sizer.dart';

class ButtonWithCounter extends StatelessWidget {
  const ButtonWithCounter({
    Key? key,
    required this.icon,
    required this.number,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final int number;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: kRadiusEllipsis,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 12.w,
            height: 12.w,
            decoration: BoxDecoration(
              color: kSuggestionColor.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 7.w,
              color: kTextColor,
            ),
          ),
          if (number > 0)
            Positioned(
              left: 0,
              top: -3,
              child: Container(
                width: 4.5.w,
                height: 4.5.w,
                decoration: BoxDecoration(
                  color: kErrorColor,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    number.toString(),
                    style: TextStyle(
                      height: 1.3,
                      fontSize: 6.5.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
