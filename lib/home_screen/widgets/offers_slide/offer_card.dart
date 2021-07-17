import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  final String title, desc;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          text: '$title\n',
          style: TextStyle(
            color: Colors.white,
            height: 1.5,
            fontSize: 10.sp,
          ),
          children: [
            TextSpan(
              text: '$desc',
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
