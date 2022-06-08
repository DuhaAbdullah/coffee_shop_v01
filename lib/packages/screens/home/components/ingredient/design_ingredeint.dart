import '../manage_state/ingredients.dart';
import 'build_checkbox.dart';
import '../../../../../services/themes/theme_status.dart';
import '../../../../../themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DesignIngredints extends StatelessWidget {
  const DesignIngredints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ManageStateIngredients _ingrProvider =
        Provider.of<ManageStateIngredients>(context);
    return Column(
      children: [
        // * choose All
        BuildCheckBox(data: _ingrProvider.allIngredients, group: true),
        Divider(
          color: AppTheme.isDark(context)
              ? AppColors.bgWhite
              : AppColors.bgDark.withOpacity(0.6),
        ),
        // * List ingredient
        ..._ingrProvider.ingredients.map((ingr) => BuildCheckBox(data: ingr))
      ],
    );
  }
}
