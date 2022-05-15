import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../Themes/app_colors.dart';
import '../manage_state/coffee.dart';
import '../model/coffee.dart';
import 'coffee_image.dart';

class CoffeeRadio extends StatelessWidget {
  const CoffeeRadio({Key? key, required ModelCoffeeState coffeeState})
      : _coffeeState = coffeeState,
        super(key: key);
  final ModelCoffeeState _coffeeState;
  @override
  Widget build(BuildContext context) {
     final ManageStateCoffee _coffeeProvider = Provider.of(context);
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 3.w,
        ),
        child: Column(
          children: [
            // * Image & name Coffee
            CoffeeImage(coffeeState: _coffeeState),
            //  * Design Radio
            Radio(
              value: _coffeeState.valueRadio,
              groupValue: _coffeeProvider.groupValue,
              activeColor: AppColors.bgGreenBold,
              onChanged: _coffeeProvider.onSelectedCoffee,
            ),
          ],
        ),
      ),
    );
  }
}
