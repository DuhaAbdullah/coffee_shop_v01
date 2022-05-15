
import '../../../../../services/themes/theme_status.dart';
import '../../../../../themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import '../model/coffee.dart';

class CoffeeImage extends StatelessWidget {
  const CoffeeImage({Key? key, required ModelCoffeeState coffeeState})
      : _coffeeState = coffeeState,
        super(key: key);
  final ModelCoffeeState _coffeeState;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          // * image
          Image(
            image: AssetImage(_coffeeState.image),
            width: 100.h,
            height: 100.h,
            fit: BoxFit.cover,
          ),

          // * Text
          Container(
            width: AppTheme.sw(context),
            height: 20.h,
            color: AppColors.bgDark.withOpacity(0.6),
            padding: EdgeInsets.symmetric(vertical: 1.h),
            child: Text(
              _coffeeState.nameCoffee,
              style: AppTheme.b1(context).copyWith(color: AppColors.bgWhite),
              textAlign: TextAlign.center,
            ).tr(),
          )
        ],
      ),
    );
  }
}
