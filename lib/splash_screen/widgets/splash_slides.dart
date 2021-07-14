import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mix_cart_app/constants/constants.dart';
import 'package:mix_cart_app/splash_screen/cubit/splash_cubit.dart';

class SplashSlides extends StatefulWidget {
  const SplashSlides({Key? key, required this.splashes}) : super(key: key);

  final List<Map<String, String>> splashes;

  @override
  _SplashSlidesState createState() => _SplashSlidesState();
}

class _SplashSlidesState extends State<SplashSlides> {
  final _contentController = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: BlocListener<SplashCubit, int>(
        listener: (context, state) {
          _contentController.animateToPage(
            state,
            duration: kAnimationDuration,
            curve: Curves.ease,
          );
        },
        child: PageView.builder(
          reverse: true,
          itemCount: widget.splashes.length,
          controller: _contentController,
          itemBuilder: (context, index) {
            return SplashSlide(
              description: widget.splashes[index]['desc'] ?? '',
              image: widget.splashes[index]['image'] ?? '',
            );
          },
          onPageChanged: (value) {
            context.read<SplashCubit>().setIndex(value);
          },
        ),
      ),
    );
  }

  void dispose() {
    _contentController.dispose();
    super.dispose();
  }
}

class SplashSlide extends StatelessWidget {
  const SplashSlide({
    required this.description,
    required this.image,
    Key? key,
  }) : super(key: key);

  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProperScreenHeight(265),
        ),
      ],
    );
  }
}
