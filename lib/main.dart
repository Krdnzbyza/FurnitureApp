import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'feature/core/constants/app_constants.dart';
import 'feature/view/furniture_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        path: AppConstants.LANG_ASSET_PATH,
        supportedLocales: [Locale('en', 'US'), Locale('tr', 'TR')],
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      home: FurnitureHomePage(),
    );
  }
}
