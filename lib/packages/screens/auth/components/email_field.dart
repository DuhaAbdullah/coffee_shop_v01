import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../language/generated/key_lang.dart';
import '../../../../services/validators/app_validators.dart';
import '../../../../utils/path_icons.dart';
import '../../../components/text_field_form.dart/custom.field.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    Key? key,
    required void Function(String? value)? valueEmail,
  })  : _valueEmail = valueEmail,
        super(key: key);
  final void Function(String? value)? _valueEmail;
  @override
  Widget build(BuildContext context) {
    return CustomeField(
      hint: KeyLang.email,
      keyboardType: TextInputType.emailAddress,
      pIcon: Padding(
        padding: EdgeInsets.all(10.h),
        child: PathIcons.emailIcon,
      ),
      onValidator: AppValidators.isEmail,
      onSaved: _valueEmail,
    );
  }
}
