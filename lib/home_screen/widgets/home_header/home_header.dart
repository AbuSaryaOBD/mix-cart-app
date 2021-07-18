import 'package:flutter/material.dart';
import 'package:mix_cart_app/home_screen/widgets/home_header/header_background.dart';
import 'package:mix_cart_app/home_screen/widgets/offers_slide/offers_slide.dart';
import 'package:sizer/sizer.dart';

import 'search_bar.dart';
import 'headr_bar.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: double.infinity,
      color: Color(0xFF004575),
      child: HeaderBackground(
        child: SafeArea(
          child: Column(
            children: [
              HeaderBar(),
              OffersSlide(),
              Spacer(),
              SearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
