import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class PlasmaBackground extends StatelessWidget {
  const PlasmaBackground({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PlasmaRenderer(
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
      child: child,
    );
  }
}
