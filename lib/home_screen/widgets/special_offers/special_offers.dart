import 'package:flutter/material.dart';
import 'package:mix_cart_app/home_screen/widgets/section_title.dart';
import 'package:mix_cart_app/home_screen/widgets/special_offers/special_offer_card.dart';
import 'package:sizer/sizer.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: 'عروض خاصة', onTap: () {}),
        SizedBox(height: 1.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                category: 'هواتف محمولة',
                desc: 'iPhone / Android',
                image: 'assets/images/special_offers_1.png',
                onTap: () {},
              ),
              SpecialOfferCard(
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
