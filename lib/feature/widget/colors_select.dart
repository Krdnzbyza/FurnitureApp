import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ColorSelected extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorSelected({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: context.dynamicHeight(0.05),
        width: context.dynamicWidth(0.06),
        padding: EdgeInsets.all(isSelected ? 1.5 : 0),
        decoration: isSelected
            ? BoxDecoration(shape: BoxShape.circle)
            : BoxDecoration(),
        child: Container(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ));
  }
}
