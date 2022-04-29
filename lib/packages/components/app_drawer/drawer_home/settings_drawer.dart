
import 'package:flutter/material.dart';
import '../../../../language/generated/key_lang.dart';
import '../../../../services/themes/theme_status.dart';
import '../../../../utils/path_svg.dart';
import 'lang/alert_lang.dart';
import 'listtile_drawer.dart';


class SettingDrawer extends StatelessWidget {
  const SettingDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // * Language
        ListTileDrawer(
          title: KeyLang.language,
          icon: PathSvg.dTranslate,
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const AlertLang(),
            );
          },
        ),

        //  * Theme
        ListTileDrawer(
          title: AppTheme.stateTheme(context),
          icon: PathSvg.dTheme,
          onTap: () {},
        ),

        // * logout
        ListTileDrawer(
          title: KeyLang.logout,
          icon: PathSvg.dlogout,
          onTap: () {},
        ),
      ],
    );
  }
}
