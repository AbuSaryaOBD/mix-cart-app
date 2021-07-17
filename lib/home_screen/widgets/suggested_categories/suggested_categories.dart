import 'package:flutter/material.dart';
import 'package:mix_cart_app/home_screen/widgets/section_title.dart';
import 'package:sizer/sizer.dart';

import 'suggested_category_card.dart';

class SuggestedCategories extends StatelessWidget {
  const SuggestedCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: 'تصنيفات مقترحة', onTap: () {}),
        SizedBox(height: 1.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SuggestedCategoryCard(
                category: 'هواتف محمولة',
                desc: 'iPhone / Android',
                image: 'assets/images/special_offers_1.png',
                onTap: () {},
              ),
              SuggestedCategoryCard(
                category: 'مقتنيات وأزياء',
                desc: 'أجود أنواع الجلد والقماش',
                image: 'assets/images/special_offers_2.png',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
