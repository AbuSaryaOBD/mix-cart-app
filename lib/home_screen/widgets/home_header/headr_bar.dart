import 'package:flutter/material.dart';
import 'package:mix_cart_app/home_screen/widgets/home_header/header_button.dart';
import 'package:sizer/sizer.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.5.w),
      height: 5.h,
      child: Row(
        children: [
          SizedBox(
            width: 200,
            child: Image.asset('assets/images/mix_title_light.png'),
          ),
          Spacer(),
          HeaderButton(
            icon: Icons.shopping_cart,
            number: 0,
            onPressed: () {},
          ),
          HeaderButton(
            icon: Icons.notifications,
            number: 3,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
