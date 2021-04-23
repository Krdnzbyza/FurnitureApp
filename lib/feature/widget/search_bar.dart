import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:furnite_app/core/init/lang/locale_keys.g.dart';
import 'package:kartal/kartal.dart';

class SearchBarButton extends StatelessWidget {
  const SearchBarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 300,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: context.highBorderRadius),
                hintStyle: context.textTheme.bodyText2,
                hintText: LocaleKeys.searchBar_name.tr(),
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
      ),
    );
  }
}
