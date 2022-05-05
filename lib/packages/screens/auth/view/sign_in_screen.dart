import 'dart:html';

import 'package:coffee_shop_v01/language/generated/key_lang.dart';
import 'package:coffee_shop_v01/packages/components/space/size_box_height.dart';
import 'package:coffee_shop_v01/packages/components/text_field_form.dart/custom.field.dart';
import 'package:coffee_shop_v01/packages/screens/auth/components/header_auth.dart';
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
              //* email
              CustomeField(
                hint: KeyLang.email,
                keyboardType: TextInputType.emailAddress,
                pIcon: Padding(
                  padding: EdgeInsets.all(10.h),
                  child: PathIcons.emailIcon,
                ),
              ),
              const SBH(
                h: 10,
              ),
              //* password
              const FieldPass(),
              //* forget password
              Container(
                alignment: AppLang.isAr(context)
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: TextButton(
                    onPressed: () => _navForget(context),
                    child:  Text(KeyLang.forgotPass.tr(),
                    style: AppTheme.b1(context)
                    .copyWith(
                      decoration: TextDecoration.underline,
                    ),
                    ),),
              ),
              const SBH(h: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
