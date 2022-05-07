import 'package:coffee_shop_v01/packages/screens/auth/components/email_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:provider/provider.dart';

import '../../../../language/generated/key_lang.dart';
import '../../../../services/themes/theme_status.dart';
//import '../../../components/btn/simple_btn.dart';
import '../../../components/button/simple_btn.dart';
import '../../../components/space/size_box_height.dart';
//import '../../../components/toast/custom_toast.dart';
//import '../components/field_email.dart';
import '../components/header_auth.dart';
import '../components/rich_text_auth.dart';
//import '../manage_state/auth_service.dart';
import '../model/user_auth.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/forgot_password";
  //* key
  static final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  static final ModelUserAuth _userAuth = ModelUserAuth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        child: Form(
          key: _keyForm,
          child: Column(
            children: [
              // * header Auth
              const HeaderAuth(),
              // * hint Reset pass
              Text(
                KeyLang.hintResetPass.tr(),
                textAlign: TextAlign.start,
                style: AppTheme.s1(context).copyWith(height: 1.5),
              ),
              const SBH(h: 20),
              EmailField(valueEmail: _userAuth.setEmail),
              const SBH(h: 20),
              //* button
              SimpleBtn(
                  title: KeyLang.resetPassword,
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
              //* have an account
              RichTextAuth(
                  fword: KeyLang.haveAccount,
                  sword: KeyLang.login,
                  onTap: () => Navigator.pop(context)),
            ],
          ),
        ),
      ),
    ));
  }
}
