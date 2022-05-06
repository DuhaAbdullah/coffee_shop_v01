import 'package:coffee_shop_v01/language/generated/key_lang.dart';
import 'package:coffee_shop_v01/packages/components/button/simple_btn.dart';
import 'package:coffee_shop_v01/packages/components/space/size_box_height.dart';
import 'package:coffee_shop_v01/packages/components/text_field_form.dart/custom.field.dart';
import 'package:coffee_shop_v01/packages/screens/auth/components/header_auth.dart';
import 'package:coffee_shop_v01/packages/screens/auth/components/rich_text_auth.dart';
import 'package:coffee_shop_v01/services/language/language_status.dart';
import 'package:coffee_shop_v01/services/themes/theme_status.dart';
import 'package:coffee_shop_v01/utils/path_icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/feild_pass.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_in";
  //* key
  static GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: keyForm,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              children: [
                //* auth
                const HeaderAuth(),
                const SBH(),
                //* email
                CustomeField(
                  hint: KeyLang.email,
                  keyboardType: TextInputType.emailAddress,
                  pIcon: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: PathIcons.emailIcon,
                  ),
                  onValidator: (value) {
                    print('error');
                  },
                ),
                const SBH(),
                //* password
                const FieldPass(),
                const SBH(),
                //* forget password
                Container(
                  alignment: AppLang.isAr(context)
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      KeyLang.forgotPass.tr(),
                      style: AppTheme.b1(context).copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const SBH(),
                //* button
                SimpleBtn(
                    title: KeyLang.login,
                    ltr: false,
                    onTap: () {
                      if (keyForm.currentState?.validate() ?? false) {
                        print('object');
                      }
                    }),
                const SBH(
                  h: 20,
                ),
                //* don't have an account
                RichTextAuth(
                    fword: KeyLang.notAccount,
                    sword: KeyLang.register,
                    onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
