import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:furnite_app/core/init/lang/locale_keys.g.dart';
import 'package:kartal/kartal.dart';

import '../viewmodel/furniture_viewmodel.dart.dart';
import '../widget/appBar_widget.dart';
import '../widget/bottomNavigation.dart';
import '../widget/furniture_details.dart';
import '../widget/search_bar.dart';

class FurnitureHomePage extends StatelessWidget {
  final _viewmodel = FurnitureViewModel();
  @override
  Widget build(BuildContext context) {
    if (_viewmodel.context == null) {
      _viewmodel.setContext(context);
    }
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          SearchBarButton(),
          DefaultTabController(
              length: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TabBar(
                    isScrollable: true,
                    labelColor: context.colorScheme.onSurface,
                    unselectedLabelColor: context.colorScheme.onSurface,
                    labelStyle: context.textTheme.bodyText1!,
                    indicatorColor: context.colorScheme.error,
                    tabs: [
                      Tab(text: LocaleKeys.mainTabBar_five.tr()),
                      Tab(text: 'Armchairs'),
                      Tab(text: LocaleKeys.mainTabBar_three.tr()),
                      Tab(text: LocaleKeys.mainTabBar_four.tr()),
                      Tab(text: LocaleKeys.mainTabBar_five.tr()),
                      Tab(text: LocaleKeys.mainTabBar_six.tr()),
                    ],
                  ),
                  Container(
                    height: context.dynamicHeight(0.6),
                    child: builTabbarVie(),
                  )
                ],
              )),
        ],
      ),
      bottomNavigationBar: bottomNavigation(),
    );
  }

  TabBarView builTabbarVie() {
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
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10),
              itemCount: _viewmodel.furniture.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: context.dynamicHeight(0.3),
                  child: Card(
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: buildColumnCard(context, index)),
                );
              },
            );
          }
        }),
        Container(child: Text(LocaleKeys.mainTabBar_five.tr())),
        Container(child: Text(LocaleKeys.mainTabBar_four.tr())),
        Container(child: Text(LocaleKeys.mainTabBar_four.tr())),
        Container(child: Text(LocaleKeys.mainTabBar_five.tr())),
        Container(child: Text(LocaleKeys.mainTabBar_six.tr())),
      ],
    );
  }

  Column buildColumnCard(BuildContext context, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildContainer(context, index),
        Padding(
          padding: context.paddingMedium,
          child: Text(
            _viewmodel.furniture[index].title.toString(),
            style: context.textTheme.bodyText2,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.star),
            Text(
              _viewmodel.furniture[index].price.toString() + ' TL',
              style: context.textTheme.bodyText2,
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FurniteDetails(
                  title: _viewmodel.furniture[index].title.toString(),
                  price: _viewmodel.furniture[index].price.toString(),
                  description:
                      _viewmodel.furniture[index].description.toString(),
                  image: _viewmodel.furniture[index].image.toString(),
                ),
              ),
            );
          },
          child: Container(
            height: context.dynamicHeight(0.05),
            width: context.dynamicWidth(0.4),
            decoration: BoxDecoration(
                borderRadius: context.lowBorderRadius,
                color: context.appTheme.buttonColor),
            child: Center(
                child: Text('Buy Me ', style: context.textTheme.bodyText1)),
          ),
        )
      ],
    );
  }

  Container buildContainer(BuildContext context, int index) {
    return Container(
      height: context.dynamicHeight(0.15),
      width: context.dynamicWidth(0.25),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('${_viewmodel.furniture[index].image}'),
              fit: BoxFit.fill)),
    );
  }
}
