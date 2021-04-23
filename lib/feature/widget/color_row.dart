import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:furnite_app/core/init/lang/locale_keys.g.dart';
import 'colors_select.dart';
import 'package:kartal/kartal.dart';

class colorSelectedRow extends StatelessWidget {
  const colorSelectedRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          LocaleKeys.buttomBuy_color.tr(),
          style: context.textTheme.headline5,
        ),
        SizedBox(
          width: context.dynamicWidth(0.20),
        ),
        ColorSelected(
          color: Colors.greenAccent,
          isSelected: true,
        ),
        SizedBox(
          width: context.dynamicWidth(0.03),
        ),
        ColorSelected(
          color: Colors.red,
          isSelected: true,
        ),
        SizedBox(
          width: context.dynamicWidth(0.03),
        ),
        ColorSelected(
          color: Colors.purple,
          isSelected: true,
        ),
        SizedBox(
          width: context.dynamicWidth(0.03),
        ),
        ColorSelected(
          color: Colors.yellow,
          isSelected: true,
        ),
      ],
    );
  }
}
