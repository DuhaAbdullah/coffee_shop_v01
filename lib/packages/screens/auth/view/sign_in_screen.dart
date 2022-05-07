import 'package:coffee_shop_v01/language/generated/key_lang.dart';
import 'package:coffee_shop_v01/packages/components/button/simple_btn.dart';
import 'package:coffee_shop_v01/packages/components/space/size_box_height.dart';
import 'package:coffee_shop_v01/packages/screens/auth/components/email_field.dart';
import 'package:coffee_shop_v01/packages/screens/auth/components/forget_pass_text.dart';
import 'package:coffee_shop_v01/packages/screens/auth/components/header_auth.dart';
import 'package:coffee_shop_v01/packages/screens/auth/components/rich_text_auth.dart';
import 'package:coffee_shop_v01/packages/screens/auth/model/user_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/pass_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_in";
  //* key
  static GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  // *  model save data
  static final ModelUserAuth _userAuth = ModelUserAuth();
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
                EmailField(valueEmail: _userAuth.setEmail),
                const SBH(),
                //* password
                FieldPass(
                  valuePass: _userAuth.setPass,
                ),
                const SBH(),
                //* forget password
                const ForgotPassText(),
                const SBH(),
                //* button
                SimpleBtn(
                    title: KeyLang.login,
                    ltr: false,
                    onTap: () {
                      if (keyForm.currentState?.validate() ?? false) {
                        keyForm.currentState?.save();
                        print(_userAuth.toString());
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
