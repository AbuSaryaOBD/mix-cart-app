import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'categories_button.dart';

class CategoriesSlide extends StatelessWidget {
  const CategoriesSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'icon': Icons.blender, 'title': 'أدوات منزلية'},
      {'icon': Icons.family_restroom, 'title': 'ملابس'},
      {'icon': Icons.sports_cricket, 'title': 'معدات رياضية'},
      {'icon': Icons.chair, 'title': 'مفروشات'},
      {'icon': Icons.restaurant, 'title': 'طعام'},
      {'icon': Icons.devices, 'title': 'أجهزة إلكترونية'},
      {'icon': Icons.category, 'title': 'منوعات'},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            categories.length,
            (index) => CategoryButton(
              icon: categories[index]['icon'],
              title: categories[index]['title'],
              onTap: () {},
            ),
          ),
        ),
      ),
    );
  }
}
