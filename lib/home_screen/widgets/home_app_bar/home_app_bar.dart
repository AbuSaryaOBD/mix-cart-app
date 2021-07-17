import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/colors.dart';
import 'package:sizer/sizer.dart';

import 'button_with_counter.dart';

AppBar homeAppBar() {
  return AppBar(
    title: SizedBox(
      width: SizerUtil.deviceType == DeviceType.mobile ? 200 : 300,
      child: Image.asset('assets/images/mix_title.png'),
    ),
    leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(Icons.menu),
        color: kBlack.withOpacity(0.9),
        iconSize: SizerUtil.deviceType == DeviceType.mobile ? 30 : 5.w,
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    ),
    actions: [
      ButtonWithCounter(
        icon: Icons.shopping_cart,
        number: 0,
        onPressed: () {},
      ),
      ButtonWithCounter(
        icon: Icons.notifications,
        number: 3,
        onPressed: () {},
      ),
    ],
  );
}

Drawer homeDrawer() {
  return Drawer();
}
