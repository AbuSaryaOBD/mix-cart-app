import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
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
          ],
        ),
      ),
    );
  }
}
