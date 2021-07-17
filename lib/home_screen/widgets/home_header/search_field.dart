import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:sizer/sizer.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 11.w,
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
          prefixIcon: Icon(
            Icons.search,
            size: 6.w,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        ),
      ),
    );
  }
}
