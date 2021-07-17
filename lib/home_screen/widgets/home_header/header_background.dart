import 'package:flutter/material.dart';
import 'package:mix_cart_app/home_screen/widgets/home_header/headr_bar.dart';
import 'package:mix_cart_app/home_screen/widgets/offers_slide/offers_slide.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:sizer/sizer.dart';

class HeaderBackground extends StatelessWidget {
  const HeaderBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        height: 35.h,
        width: 100.w,
        color: Color(0xFF004575),
        child: PlasmaRenderer(
          type: PlasmaType.infinity,
          particles: 7,
          color: Color(0xFF022b44),
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
          child: SafeArea(
            child: Column(
              children: [
                HeaderBar(),
                OffersSlide(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
