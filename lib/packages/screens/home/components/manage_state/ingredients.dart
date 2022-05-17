import 'dart:collection';

import 'package:coffee_shop_v01/packages/screens/home/components/model/checkbox_state.dart';
import 'package:flutter/material.dart';

import '../../../../../language/generated/key_lang.dart';

class ManageStateIngredients extends ChangeNotifier {
  // * choose all check box
  final ModelCheckBoxState _allIngredients =
      ModelCheckBoxState(key: 0, title: KeyLang.chooseAll);

  // * List of data ingr
  final List<ModelCheckBoxState> _ingredients = [
    ModelCheckBoxState(key: 1, title: KeyLang.milk),
    ModelCheckBoxState(key: 2, title: KeyLang.sugar),
    ModelCheckBoxState(key: 3, title: KeyLang.vanilla),
    ModelCheckBoxState(key: 4, title: KeyLang.ice),
    ModelCheckBoxState(key: 5, title: KeyLang.caramelSauce),
  ];

   // * get List
  UnmodifiableListView<ModelCheckBoxState> get ingredients =>
      UnmodifiableListView(_ingredients);

   // * get Data All Choose
  ModelCheckBoxState get allIngredients => _allIngredients;

  // * onPressed CheckBox
  void onSelectedCheckBox(bool? value, int key) {
    if (value != null) {
      for (var ingr in _ingredients) {
        if (ingr.key == key) {
          ingr.value = value;
        }
      }
      _allIngredients.value = _ingredients.every((ingr) => ingr.value == true);
      notifyListeners();
    }
  }
}
