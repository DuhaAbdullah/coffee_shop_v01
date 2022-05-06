import 'package:coffee_shop_v01/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomeField extends StatelessWidget {
  const CustomeField({
    Key? key,
    String? initValue,
    Color cursorColor = Colors.green,
    bool obscureText = false,
    String? hint,
    Widget? pIcon,
    Widget? sIcon,
    Widget? label,
    String? labelText,
    String? helperText,
    TextInputType? keyboardType,
    String? Function(String?)? onValidator,
    void Function(String?)? onSaved,
    void Function(String)? onChanged,
  })  : _initValue = initValue,
        _cursorColor = cursorColor,
        _textInputType = keyboardType,
        _obscureText = obscureText,
        _hint = hint,
        _pIcon = pIcon,
        _sIcon = sIcon,
        _label = label,
        _labelText = labelText,
        _helperText = helperText,
        _onValidator = onValidator,
        _onSaved = onSaved,
        _onChanged = onChanged,
        super(key: key);
  final String? _initValue;
  final Color? _cursorColor;
  final TextInputType? _textInputType;
  final bool _obscureText;
  final String? Function(String?)? _onValidator;
  final void Function(String?)? _onSaved;
  final void Function(String)? _onChanged;
  //* input decoration
  final String? _hint;
  final Widget? _pIcon;
  final Widget? _sIcon;
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
      //validator will work when I tell her to work
      validator: _onValidator,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: _hint?.tr(),
        prefixIcon: _pIcon,
        suffixIcon: _sIcon,
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
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
          borderSide: BorderSide(
            color: AppColors.ceriseRed,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
          borderSide: BorderSide(
            color: AppColors.ceriseRed,
          ),
        ),
      ),
    );
  }
}
