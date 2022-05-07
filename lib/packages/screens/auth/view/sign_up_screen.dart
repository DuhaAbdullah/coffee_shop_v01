import 'package:coffee_shop_v01/packages/screens/auth/model/user_auth.dart';
import 'package:flutter/material.dart';
import '../components/header_auth.dart';
import 'package:coffee_shop_v01/language/generated/key_lang.dart';
import 'package:coffee_shop_v01/packages/components/button/simple_btn.dart';
import 'package:coffee_shop_v01/packages/components/space/size_box_height.dart';
import 'package:coffee_shop_v01/packages/screens/auth/components/email_field.dart';
import 'package:coffee_shop_v01/packages/screens/auth/components/header_auth.dart';
import 'package:coffee_shop_v01/packages/screens/auth/components/rich_text_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/pass_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_up";
  //* key
  static final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  // *  model save data
  static final ModelUserAuth _userAuth = ModelUserAuth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              //* button
              SimpleBtn(
                  title: KeyLang.login,
                  ltr: false,
                  onTap: () {
                    if (_keyForm.currentState?.validate() ?? false) {
                      _keyForm.currentState?.save();
                      print(_userAuth.toString());
                    }
                  }),
              const SBH(
                h: 20,
              ),
              //*  have an account
              RichTextAuth(
                  fword: KeyLang.haveAccount,
                  sword: KeyLang.login,
                  onTap: () => Navigator.pop(context)),
            ],
          ),
        ),
      ),
    );
  }
}
