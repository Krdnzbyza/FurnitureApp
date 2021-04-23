import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:furnite_app/core/init/lang/locale_keys.g.dart';
import 'package:kartal/kartal.dart';

import '../viewmodel/furniture_viewmodel.dart.dart';

class ControlTabBar extends StatelessWidget {
  final _viewmodel = FurnitureViewModel();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: buildPageColumn(context),
    );
  }

  Column buildPageColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildTabBar(context),
        Container(
          height: context.dynamicHeight(0.6),
          child: buildTabBarView(),
        )
      ],
    );
  }

  TabBar buildTabBar(BuildContext context) {
    return TabBar(
      isScrollable: true,
      labelColor: context.colorScheme.onSurface,
      unselectedLabelColor: context.colorScheme.onSurface,
      labelStyle: context.textTheme.bodyText1!,
      indicatorColor: context.colorScheme.error,
      tabs: [
        Tab(
          text: LocaleKeys.mainTabBar_three.tr(),
        ),
        Tab(
          text: LocaleKeys.mainTabBar_three.tr(),
        ),
        Tab(
          text: LocaleKeys.mainTabBar_three.tr(),
        ),
        Tab(
          text: LocaleKeys.mainTabBar_five.tr(),
        ),
        Tab(
          text: LocaleKeys.mainTabBar_six.tr(),
        ),
        Tab(
          text: LocaleKeys.mainTabBar_four.tr(),
        ),
      ],
    );
  }

  TabBarView buildTabBarView() {
    return TabBarView(
      children: [
        Observer(builder: (_) {
          if (_viewmodel.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.4,
                  crossAxisSpacing: 10),
              itemCount: _viewmodel.furniture.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: context.dynamicHeight(0.3),
                  child: Card(
                    semanticContainer: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: buildProductsettings(context, index),
                  ),
                );
              },
            );
          }
        }),
        Container(
          child: Text(LocaleKeys.mainTabBar_five.tr()),
        ),
        Container(
          child: Text(LocaleKeys.mainTabBar_three.tr()),
        ),
        Container(
          child: Text(
            LocaleKeys.mainTabBar_three.tr(),
          ),
        ),
        Container(
          child: Text(
            LocaleKeys.mainTabBar_five.tr(),
          ),
        ),
        Container(
          child: Text(LocaleKeys.mainTabBar_six.tr()),
        ),
      ],
    );
  }

  Column buildProductsettings(BuildContext context, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildContainerProducts(context, index),
        Padding(
          padding: context.paddingMedium,
          child: Text(
            _viewmodel.furniture[index].title.toString(),
            style: TextStyle(fontSize: 15),
          ),
        ),
        Text(
          _viewmodel.furniture[index].price.toString() + 'TL',
          style: context.textTheme.bodyText2,
        ),
        InkWell(
          child: buildContainerBuyMe(context),
        )
      ],
    );
  }

  Container buildContainerBuyMe(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.05),
      width: context.dynamicWidth(0.4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
      child: Center(child: Text(LocaleKeys.mainTabBar_buy.tr())),
    );
  }

  Container buildContainerProducts(BuildContext context, int index) {
    return Container(
      height: context.dynamicHeight(0.15),
      width: context.dynamicWidth(0.20),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('${_viewmodel.furniture[index].image}'),
              fit: BoxFit.fill)),
    );
  }
}
