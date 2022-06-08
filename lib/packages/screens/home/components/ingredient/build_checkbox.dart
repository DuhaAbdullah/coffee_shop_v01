import 'package:coffee_shop_v01/packages/screens/home/components/model/checkbox_state.dart';
import 'package:coffee_shop_v01/themes/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../manage_state/ingredients.dart';

class BuildCheckBox extends StatelessWidget {
  const BuildCheckBox(
      {Key? key, required ModelCheckBoxState data, bool group = false})
      : _data = data,
        _group = group,
        super(key: key);
  final ModelCheckBoxState _data;
  final bool _group;
  @override
  Widget build(BuildContext context) {
    final ManageStateIngredients _ingrProvider =
        Provider.of<ManageStateIngredients>(context);
    return CheckboxListTile(
        value: _data.value,
        activeColor: AppColors.bgGreenBold,
        title: Text(_data.title).tr(),
        contentPadding: EdgeInsets.zero,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (value) {
          _ingrProvider.onSelectedCheckBox(value, _data.key);
        });
  }
}
