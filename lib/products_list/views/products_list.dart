import 'package:flutter/material.dart';
import 'package:mix_cart_app/products_list/widgets/widgets.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({Key? key}) : super(key: key);

  static const String routeName = '/products_list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductsListBody(),
    );
  }
}
