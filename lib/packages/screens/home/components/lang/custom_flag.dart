import 'package:coffee_shop_v01/services/restart_app/app_restart.dart';

import '../../../../../../services/language/language_status.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class FlagDrawer extends StatelessWidget {
  const FlagDrawer({
    Key? key,
    required String flag,
    required String title,
    required Locale lang,
  })  : _flag = flag,
        _title = title,
        _lang = lang,
        super(key: key);

  final String _flag;
  final String _title;
  final Locale _lang;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          String langCode = AppLang.currentLang(context);

          if (_lang.languageCode == langCode) {
            Navigator.pop(context);
          } else {
            EasyLocalization.of(context)?.setLocale(_lang);
            RestartApp.reBuildApp(context);
          }
        },
        child: Column(
          children: [
            // * Flag
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(_flag))),
              ),
            ),
            // * Title
            Expanded(child: Text(_title.tr()))
          ],
        ),
      ),
    );
  }
}
