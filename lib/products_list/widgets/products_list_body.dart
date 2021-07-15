import 'package:flutter/material.dart';
import 'package:mix_cart_app/products_list/widgets/categories_slide/categories_slide.dart';
import 'package:mix_cart_app/products_list/widgets/special_offers/special_offers.dart';
import 'package:mix_cart_app/products_list/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class ProductsListBody extends StatelessWidget {
  const ProductsListBody({
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
