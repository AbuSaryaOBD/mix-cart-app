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
      top: 13,
      right: 2.5.w + 70,
      child: Container(
        width: 70.w,
        height: 45,
        decoration: BoxDecoration(
          color: kSuggestionColor.withOpacity(0.5),
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
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          ),
        ),
      ),
    );
  }
}
