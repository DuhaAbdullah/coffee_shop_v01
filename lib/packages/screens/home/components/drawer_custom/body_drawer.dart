import 'package:coffee_shop_v01/packages/screens/home/components/drawer_custom/custom_list_drawer.dart';
import 'package:coffee_shop_v01/services/themes/change_theme.dart';
import 'package:coffee_shop_v01/utils/path_images.dart';
import 'package:provider/provider.dart';

import '../../../../../language/generated/key_lang.dart';
import '../../../../../services/themes/theme_status.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/path_svg.dart';
import '../lang/alert_lang.dart';

class DrawerBody extends StatefulWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  _DrawerBodyState createState() => _DrawerBodyState();
}

class _DrawerBodyState extends State<DrawerBody> {
  String _themeText = KeyLang.light;

  @override
  Widget build(BuildContext context) {
    final ChangeTheme _themeProvider = Provider.of<ChangeTheme>(context);
    _themeText = AppTheme.isDark(context) ? KeyLang.dark : KeyLang.light;
    return Drawer(
      child: Column(
        children: [
          // * Header Logo
          const Image(image: AssetImage(PathImages.logo)),
          // * Translate
          CustomListDrawer(
            icon: PathSvg.dTranslate,
            title: KeyLang.language,
            onTap: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => const AlertDialogDrawer(),
              );
            },
          ),
          // * theme
          CustomListDrawer(
            icon: PathSvg.dTheme,
            title: _themeText,
            onTap: () {},
            iconTrailing: Switch(
              value: _themeProvider.isDark,
              onChanged: (value) async {
                _themeProvider.updateTheme = value;
                await AppTheme.setTheme(value: value);
              },
            ),
            // iconTrailing: Switch(
            //   value: _theme.isDark,
            //   onChanged: (value) async {
            //     _theme.updateTheme = value;
            //     await AppTheme.setTheme(value: value);
            //     if (mounted) RestartWidget.restartApp(context);
            //   },
            // ),
          ),
          // * SignOut
          CustomListDrawer(
            icon: PathSvg.dlogout,
            title: KeyLang.logout,
            onTap: () async {},
          ),
        ],
      ),
    );
  }
}
