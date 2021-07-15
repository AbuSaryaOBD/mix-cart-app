import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:sizer/sizer.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 17.w,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.4),
                borderRadius: kRadiusRounded1,
              ),
              child: Icon(
                icon,
                size: 11.w,
                color: kSecondaryColor,
              ),
            ),
            SizedBox(height: 5),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 7.sp, height: 1.1),
            )
          ],
        ),
      ),
    );
  }
}
