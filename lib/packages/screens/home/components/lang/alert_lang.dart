import '../../../../../../language/config/config_lang.dart';
import '../../../../../../language/generated/key_lang.dart';


import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/path_images.dart';
import 'custom_flag.dart';

class AlertDialogDrawer extends StatelessWidget {
  const AlertDialogDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      title: Text(
        KeyLang.selectLanguage.tr(),
        textAlign: TextAlign.center,
      ),
      content: SizedBox(
        height: 120.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // * arabic
            FlagDrawer(
              flag: PathImages.saudi,
              title: KeyLang.arabic,
              lang: ConfigLanguage.arLocale,
            ),

            // * english
            FlagDrawer(
              flag: PathImages.unitedStates,
              title: KeyLang.english,
              lang: ConfigLanguage.enLocale,
            ),
          ],
        ),
      ),
      actions: [
        OutlinedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(KeyLang.cancel.tr()),
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(120.r),
            ),
          ),
        )
      ],
    );
  }
}
