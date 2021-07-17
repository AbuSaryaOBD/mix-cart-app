import 'package:flutter/material.dart';
import 'package:mix_cart_app/home_screen/widgets/banner/offers_banner.dart';
import 'package:mix_cart_app/home_screen/widgets/categories_slide/categories_slide.dart';
import 'package:mix_cart_app/home_screen/widgets/home_header/home_header.dart';
import 'package:mix_cart_app/home_screen/widgets/special_offers/special_offers.dart';
import 'package:sizer/sizer.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 1.h),
            ListHeader(),
            SizedBox(height: 2.h),
            OffersBanner(),
            SizedBox(height: 2.h),
            CategoriesSlide(),
            SizedBox(height: 2.h),
            SpecialOffers(),
          ],
        ),
      ),
    );
  }
}
