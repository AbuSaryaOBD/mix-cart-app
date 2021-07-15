import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:mix_cart_app/products_list/products_list.dart';

class SplashCubit extends Cubit<int> {
  SplashCubit(this.length, this.context) : super(0);
  final int length;
  final BuildContext context;

  void next() {
    if (state < this.length - 1)
      this.emit(state + 1);
    else
      Navigator.pushReplacementNamed(context, ProductsList.routeName);
  }

  void setIndex(int index) {
    this.emit(index);
  }
}
