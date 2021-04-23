import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:furnite_app/core/init/lang/locale_keys.g.dart';
import 'package:furnite_app/feature/core/color/color_theme.dart';
import 'package:kartal/kartal.dart';

import '../view/furniture_view.dart';
import 'buttom_buy.dart';
import 'color_row.dart';

class FurniteDetails extends StatelessWidget {
  FurniteDetails({this.description, this.image, this.title, this.price});
  late final String? title;
  late final String? price;
  late final String? description;
  late final String? image;
  @override
  Widget build(BuildContext context) {
    final colorConst = ColorTheme();
    return Scaffold(
        bottomNavigationBar: bottomBuy(),
        appBar: detailsAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              allProductContainer(colorConst, context),
              detailsProductContainer(colorConst, context),
            ],
          ),
        ));
  }

  Container detailsProductContainer(
      ColorTheme colorConst, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colorConst.quillgray,
          borderRadius: context.normalBorderRadius),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: context.paddingNormal,
            child: textProductionWidget(context),
          ),
          Padding(
            // price
            padding: context.paddingNormal,
            child: priceContainer(context),
          )
        ],
      ),
    );
  }

  Container allProductContainer(ColorTheme colorConst, BuildContext context) {
    return Container(
      color: colorConst.athensgray,
      child: Center(
        child: Container(
          padding: context.paddingLow,
          width: context.dynamicWidth(0.5),
          child: Image.network(image.toString()),
        ),
      ),
    );
  }

  Column textProductionWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          //title
          title.toString(),
          style: context.textTheme.headline4,
        ),
        Padding(
          padding: context.paddingLow,
          child: colorSelectedRow(),
        ),
        Text(
          //description
          description.toString(),
          style: context.textTheme.bodyText1,
        )
      ],
    );
  }

  Container priceContainer(BuildContext context) {
    return Container(
      child: Text('\$ ' + price.toString(), style: context.textTheme.headline6),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: context.appTheme.buttonColor,
        centerTitle: false,
        title: Text(
          LocaleKeys.detailsPage_name.tr(),
          style: context.textTheme.headline5,
        ),
        leading: IconButton(
          color: context.colorScheme.onSurface,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => FurnitureHomePage()));
          },
        ),
        actions: [
          Padding(
            padding: context.horizontalPaddingLow,
            child: Card(
              shape: context.roundedRectangleAllBorderNormal,
              child: IconButton(
                icon: ClipOval(
                  child: Icon(
                    Icons.favorite,
                    color: context.colorScheme.error,
                  ),
                ),
                onPressed: () {},
                color: context.colorScheme.onSurface,
              ),
            ),
          )
        ]);
  }
}
