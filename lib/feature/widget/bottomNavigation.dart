import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'bottomNav_Item.dart';

class bottomNavigation extends StatelessWidget {
  const bottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      padding: context.paddingLow,
      decoration: BoxDecoration(
          borderRadius: context.highBorderRadius,
          color: context.appTheme.bottomAppBarColor),
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
