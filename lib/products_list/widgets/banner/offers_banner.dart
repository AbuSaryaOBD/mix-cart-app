import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:mix_cart_app/products_list/widgets/banner/plasma_background.dart';
import 'package:sizer/sizer.dart';

class OffersBanner extends StatelessWidget {
  const OffersBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PlasmaBackground(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 20),
          child: Text.rich(
            TextSpan(
              text: 'كوبونات خصم\n',
              style: TextStyle(color: Colors.white, height: 1.3),
              children: [
                TextSpan(
                  text: 'حسم 20% لمدة شهر',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
