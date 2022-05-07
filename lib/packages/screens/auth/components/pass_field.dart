import 'package:coffee_shop_v01/services/validators/app_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../language/generated/key_lang.dart';
import '../../../../utils/path_icons.dart';
import '../../../components/text_field_form.dart/custom.field.dart';

class FieldPass extends StatefulWidget {
  const FieldPass({Key? key , 
   required void Function(String? value)? valuePass,
  }) : _valuePass = valuePass, super(key: key);

  @override
  State<FieldPass> createState() => _FieldPassState();
  final Function(String? value)? _valuePass;
}

class _FieldPassState extends State<FieldPass> {
  // * Icon
  bool _obscureText = true;
  FaIcon _iconSuffix = PathIcons.eyeIcon;
  @override
  Widget build(BuildContext context) {
    return CustomeField(
      hint: KeyLang.pass,
      //keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      pIcon: Padding(
        padding: EdgeInsets.all(10.h),
        child: PathIcons.passIcon,
      ),
      sIcon: Padding(
        padding: EdgeInsets.all(10.h),
        child: InkWell(
          borderRadius: BorderRadius.circular(20.r),
          child: _iconSuffix,
          onTap: () => _viewPass(),
        ),
      ),
      onValidator: AppValidator.isPass,
      onSaved: widget._valuePass,
    );
  }

  //* show password
  void _viewPass() {
    setState(() {
      if (_obscureText) {
        _iconSuffix = PathIcons.eyeSlashIcon;
        _obscureText = false;
      } else {
        _iconSuffix = PathIcons.eyeIcon;
        _obscureText = true;
      }
    });
  }
}
