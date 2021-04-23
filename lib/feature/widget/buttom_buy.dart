import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:furnite_app/core/init/lang/locale_keys.g.dart';
import 'package:kartal/kartal.dart';

class bottomBuy extends StatelessWidget {
  const bottomBuy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(icon: Icon(Icons.shopping_bag_outlined), onPressed: () {}),
          textBuyButton(context),
        ],
      ),
    );
  }

  TextButton textBuyButton(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        height: context.dynamicHeight(0.05),
        width: context.dynamicWidth(0.4),
        decoration: BoxDecoration(
            borderRadius: context.lowBorderRadius,
            color: context.appTheme.buttonColor),
        child: Center(
            child: Text(LocaleKeys.buttomBuy_buy.tr(),
                style: context.textTheme.bodyText1)),
      ),
    );
  }
}
