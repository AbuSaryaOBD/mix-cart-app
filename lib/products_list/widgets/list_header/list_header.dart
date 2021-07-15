import 'package:flutter/material.dart';
import 'package:mix_cart_app/products_list/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class ListHeader extends StatelessWidget {
  const ListHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          ButtonWithCounter(
            icon: Icons.shopping_cart_outlined,
            number: 0,
            onTap: () {},
          ),
          ButtonWithCounter(
            icon: Icons.notifications_none_outlined,
            number: 3,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
