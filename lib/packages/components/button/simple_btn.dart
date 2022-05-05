import 'package:coffee_shop_v01/services/themes/theme_status.dart';
import 'package:coffee_shop_v01/themes/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimpleBtn extends StatelessWidget {
  const SimpleBtn({
    Key? key,
    required String title,
    required void Function() onTap,
    double height = 120,
  })  : _title = title,
        _onTap = onTap,
        _height = height,
        super(key: key);
  final String _title;
  final double _height;
  final void Function() _onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Container(
        width: AppTheme.sw(context),
        height: _height.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.r)
        ),
        child: Text(
          _title.tr().toUpperCase(),
          style: AppTheme.h5(context).copyWith(color: AppColors.bgWhite),
        ),
      ),
    );
  }
}
