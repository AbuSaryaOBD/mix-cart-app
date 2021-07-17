import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/colors.dart';
import 'package:sizer/sizer.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(title, style: TextStyle(fontSize: 3.5.w)),
          GestureDetector(
            child: Text(
              'استعرض المزيد',
              style: TextStyle(fontSize: 2.5.w, color: kSuggestionColor),
            ),
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
