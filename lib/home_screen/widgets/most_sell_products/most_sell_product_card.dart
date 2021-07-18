import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:mix_cart_app/home_screen/models/models.dart';
import 'package:sizer/sizer.dart';

class MostSellProductCard extends StatelessWidget {
  const MostSellProductCard({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  final Product product;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: SizedBox(
          width: 30.w,
          child: Column(
            children: [
              SizedBox(
                height: 31.w,
                child: Container(
                  padding: EdgeInsets.all(2.w),
                  decoration: BoxDecoration(
                    color: kGrey,
                    borderRadius: kRadiusRounded1,
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              Text(
                product.title,
                style: TextStyle(
                  fontSize: 7.sp,
                  color: kBlack,
                ),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 7.w,
                      height: 7.w,
                      decoration: BoxDecoration(
                        color: kGrey.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 15.sp,
                        color: product.isFavourite ? kErrorColor : kTextColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
