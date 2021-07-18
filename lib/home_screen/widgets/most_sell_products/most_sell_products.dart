import 'package:flutter/material.dart';
import 'package:mix_cart_app/home_screen/models/models.dart';
import 'package:mix_cart_app/home_screen/widgets/section_title.dart';
import 'package:sizer/sizer.dart';

import 'most_sell_product_card.dart';

class MostSellProducts extends StatelessWidget {
  const MostSellProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: 'الأكثر مبيعاً', onTap: () {}),
        SizedBox(height: 1.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demoProducts.length,
              (index) => MostSellProductCard(
                product: demoProducts[index],
                onTap: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
