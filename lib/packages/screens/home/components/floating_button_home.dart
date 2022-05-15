import '../../../../themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/path_images.dart';
import '../views/order.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.pushNamed(context, OrderScreen.routeName),
      backgroundColor: AppColors.bgGreen,
      child: Image(
        image: AssetImage(PathImages.coffeeCup),
        width: 30.w,
      ),
    );
  }
}
