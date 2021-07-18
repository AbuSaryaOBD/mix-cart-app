import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:sizer/sizer.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 1.5.h,
      right: 20.w,
      child: Container(
        width: 70.w,
        height: 6.h,
        decoration: BoxDecoration(
          color: kGrey,
          borderRadius: kRadiusEllipsis,
        ),
        child: TextField(
          style: TextStyle(fontSize: 11.sp),
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "البحث",
            suffixIcon: Icon(
              Icons.search,
              size: 6.w,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
          ),
        ),
      ),
    );
  }
}
