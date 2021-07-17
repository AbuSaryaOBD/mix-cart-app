import 'package:flutter/material.dart';
import 'package:mix_cart_app/home_screen/widgets/banner/offers_banner.dart';
import 'package:mix_cart_app/home_screen/widgets/suggested_categories/suggested_categories.dart';
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
            SizedBox(height: 2.h),
            OffersBanner(),
            SizedBox(height: 2.h),
            SuggestedCategories(),
          ],
        ),
      ),
    );
  }
}
