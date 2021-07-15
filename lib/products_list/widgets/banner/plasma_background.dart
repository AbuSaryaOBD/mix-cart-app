import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:sizer/sizer.dart';

class PlasmaBackground extends StatelessWidget {
  const PlasmaBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1.h),
      height: 90,
      width: 90.w,
      decoration: BoxDecoration(
        color: Color(0xFF410099),
        borderRadius: kRadiusRounded,
      ),
      child: PlasmaRenderer(
        type: PlasmaType.infinity,
        particles: 7,
        color: Color(0xFF330373),
        blur: 0.7,
        size: 0.3,
        speed: 0.5,
        offset: 0,
        blendMode: BlendMode.plus,
        particleType: ParticleType.atlas,
        variation1: 0,
        variation2: 0,
        variation3: 0,
        rotation: 0,
      ),
    );
  }
}
