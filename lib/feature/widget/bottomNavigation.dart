import 'package:flutter/material.dart';
import 'package:furnite_app/feature/core/color/color_theme.dart';
import 'package:kartal/kartal.dart';

import 'bottomNav_Item.dart';

class bottomNavigation extends StatelessWidget {
  final colorConst = ColorTheme();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      padding: context.paddingLow,
      decoration: BoxDecoration(
          borderRadius: context.highBorderRadius, color: colorConst.eastbay),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(
            icon: Icon(Icons.home),
            isActive: false,
          ),
          NavItem(
            icon: Icon(Icons.shopping_bag_outlined),
            isActive: false,
          ),
          NavItem(
            icon: Icon(Icons.star),
            isActive: false,
          ),
          NavItem(
            icon: Icon(Icons.person),
            isActive: false,
          ),
        ],
      ),
    );
  }
}
