import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:sizer/sizer.dart';

import 'products_review.dart';
import 'search_field.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        height: 67.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
        ),
        child: Column(
          children: [
            Container(
              height: 75,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  MenuButton(),
                  SearchField(),
                ],
              ),
            ),
            ProductsReview(),
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -20,
      right: 3.w,
      child: Card(
        color: kOrange,
        child: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu),
          color: kWhite,
          iconSize: 33,
        ),
      ),
    );
  }
}
