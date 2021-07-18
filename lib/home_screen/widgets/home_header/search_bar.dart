import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/colors.dart';
import 'package:sizer/sizer.dart';

import 'menu_button.dart';
import 'search_field.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9.h,
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          MenuButton(),
          SearchField(),
        ],
      ),
    );
  }
}
