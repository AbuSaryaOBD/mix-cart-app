import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mix_cart_app/home_screen/cubit/offers_cubit.dart';
import 'package:mix_cart_app/home_screen/widgets/home_header/home_header.dart';
import 'package:mix_cart_app/home_screen/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OffersCubit(),
      child: Scaffold(
        body: Column(
          children: [
            HomeHeader(),
          ],
        ),
        drawer: HomeDrawer(),
        bottomNavigationBar: HomeBottomNavigation(),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
