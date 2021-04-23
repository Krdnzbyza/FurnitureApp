import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class NavItem extends StatelessWidget {
  const NavItem({Key? key, this.isActive, this.icon}) : super(key: key);
  final icon;
  final bool? isActive;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(icon: icon, onPressed: () {}),
        Container(
          height: context.dynamicHeight(0.01),
          width: context.dynamicWidth(0.2),
        )
      ],
    );
  }
}
