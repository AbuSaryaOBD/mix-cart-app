import 'package:flutter/material.dart';
import 'package:mix_cart_app/home_screen/cubit/offers_cubit.dart';
import 'package:mix_cart_app/home_screen/widgets/offers_slide/offer_card.dart';
import 'package:mix_cart_app/home_screen/widgets/offers_slide/offers_dots.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OffersSlide extends StatelessWidget {
  const OffersSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> offers = [
      {
        'title': 'كوبونات خصم',
        'desc': 'حسم 20% لمدة شهر',
      },
      {
        'title': 'عروض جوالات',
        'desc': 'اشترك في السحب على آيفون 11',
      },
    ];

    return Container(
      width: 100.w,
      height: 16.h,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: offers.length,
              itemBuilder: (context, index) {
                return OfferCard(
                  title: offers[index]['title'] ?? '',
                  desc: offers[index]['desc'] ?? '',
                );
              },
              onPageChanged: (value) {
                context.read<OffersCubit>().setIndex(value);
              },
            ),
          ),
          OffersDots(length: offers.length),
        ],
      ),
    );
  }
}
