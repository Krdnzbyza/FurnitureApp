import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/init/lang/locale_keys.g.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.appBarMain_welcome.tr(),
            style: context.textTheme.headline5,
          ),
          Text(
            LocaleKeys.appBarMain_name.tr(),
            style: context.textTheme.headline6,
          ),
        ],
      ),
      leading: IconButton(
          icon: ClipOval(child: Image.asset('assets/images/avatar.png')),
          onPressed: () {}),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications_none),
          onPressed: () {},
          color: context.colorScheme.onSurface,
        )
      ]);
}
