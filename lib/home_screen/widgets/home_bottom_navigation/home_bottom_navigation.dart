import 'package:flutter/material.dart';
import 'package:mix_cart_app/constants/colors.dart';

class HomeBottomNavigation extends StatelessWidget {
  const HomeBottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: kWhite,
      elevation: 0,
      iconSize: 27,
      selectedItemColor: kSecondaryColor,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        height: 1.2,
      ),
      // selectedIconTheme: IconThemeData(size: 33),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'الرئيسية',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'المتجر',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'الملف الشخصي',
        ),
      ],
    );
  }
}
