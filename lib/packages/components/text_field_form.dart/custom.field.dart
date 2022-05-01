import 'package:coffee_shop_v01/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeField extends StatelessWidget {
  const CustomeField({
    Key? key,
    String? initValue,
    Color cursorColor = Colors.green,
    bool obscureText = false,
    TextInputType? textInputType,
    String? hint,
    Widget? pIcon,
    Widget? label,
    String? labelText,
    String? helperText,
  })  : _initValue = initValue,
        _cursorColor = cursorColor,
        _textInputType = textInputType,
        _obscureText = obscureText,
        _hint = hint,
        _pIcon = pIcon,
        _label = label,
        _labelText = labelText,
        _helperText = helperText,
        super(key: key);
  final String? _initValue;
  final Color? _cursorColor;
  final TextInputType? _textInputType;
  final bool _obscureText;
  //* input decoration
  final String? _hint;
  final Widget? _pIcon;
  final Widget? _label;
  final String? _labelText;
  final String? _helperText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: _initValue,
      cursorColor: _cursorColor,
      keyboardType: _textInputType,
      obscureText: _obscureText,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: _hint,
        prefixIcon: _pIcon,
        label: _label,
        labelText: _labelText,
        helperText: _helperText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
          borderSide: BorderSide(color: AppColors.bgGreen),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.r),
            borderSide: BorderSide(
              color: AppColors.bgGreenBold,
            )),
      ),
    );
  }
}
