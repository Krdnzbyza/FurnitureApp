import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:furnite_app/core/init/lang/locale_keys.g.dart';
import 'package:furnite_app/feature/core/color/color_theme.dart';
import 'package:kartal/kartal.dart';

class bottomBuy extends StatelessWidget {
  const bottomBuy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorConst = ColorTheme();
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              height: context.dynamicHeight(0.06),
              width: context.dynamicWidth(0.2),
              decoration: BoxDecoration(
                  borderRadius: context.lowBorderRadius,
                  color: colorConst.athensgray),
              child: IconButton(
                  icon: Icon(Icons.shopping_bag_outlined), onPressed: () {})),
          textBuyButton(context),
        ],
      ),
    );
  }

  TextButton textBuyButton(BuildContext context) {
    final colorConst = ColorTheme();
    return TextButton(
      onPressed: () {},
      child: Container(
        height: context.dynamicHeight(0.05),
        width: context.dynamicWidth(0.7),
        decoration: BoxDecoration(
            borderRadius: context.lowBorderRadius, color: colorConst.eastbay),
        child: Center(
            child: Text(LocaleKeys.buttomBuy_buy.tr(),
                style: context.textTheme.bodyText1)),
      ),
    );
  }
}
