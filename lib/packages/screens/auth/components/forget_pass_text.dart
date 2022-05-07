import '../../../../language/generated/key_lang.dart';
import '../../../../services/language/language_status.dart';
import '../../../../services/themes/theme_status.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ForgotPassText extends StatelessWidget {
  const ForgotPassText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:
          AppLang.isAr(context) ? Alignment.centerLeft : Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          KeyLang.forgotPass.tr(),
          style: AppTheme.b1(context)
              .copyWith(decoration: TextDecoration.underline),
        ),
      ),
    );
  }

  // * navigator Forgot
  //void _navForgot(BuildContext context) =>
     // Navigator.pushNamed(context, PageForgot.id);
}
