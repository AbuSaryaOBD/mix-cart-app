import 'package:flutter/material.dart';
import 'package:mix_cart_app/home_screen/widgets/most_sell_products/most_sell_products.dart';
import 'package:mix_cart_app/home_screen/widgets/suggested_categories/suggested_categories.dart';
import 'package:sizer/sizer.dart';

class ProductsReview extends StatelessWidget {
  const ProductsReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 65,
      child: Column(
        children: [
          SuggestedCategories(),
          SizedBox(height: 3.h),
          MostSellProducts(),
        ],
      ),
    );
  }
}
