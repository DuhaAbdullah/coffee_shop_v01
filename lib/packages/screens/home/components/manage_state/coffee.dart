import 'dart:collection';

import 'package:coffee_shop_v01/utils/path_images.dart';
import '../../../../../language/generated/key_lang.dart';
import '../model/coffee.dart';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ManageStateCoffee extends ChangeNotifier {
  int groupValue = -1;

  // * UI Data
  final List<ModelCoffeeState> _coffee = [
    ModelCoffeeState(
      image: PathImages.coffee1,
      nameCoffee: KeyLang.caffeMocha,
      valueRadio: 1,
    ),
    ModelCoffeeState(
      image: PathImages.coffee2,
      nameCoffee: KeyLang.cappuccino,
      valueRadio: 2,
    ),
    ModelCoffeeState(
      image: PathImages.coffee3,
      nameCoffee: KeyLang.hotCoffees,
      valueRadio: 3,
    ),
  ];

  // * Get List Coffee
  UnmodifiableListView<ModelCoffeeState> get coffee =>
      UnmodifiableListView(_coffee);

  // * set choose Coffee
  void onSelectedCoffee(int? value) {
    groupValue = value ?? -1;
    notifyListeners();
  }

  // * get choose Coffee
  String? get chooseCoffee {
    String? nameCoffee;
    for (var cof in _coffee) {
      if (cof.valueRadio == groupValue) {
        nameCoffee = cof.nameCoffee.tr();
      }
    }
    return nameCoffee;
  }

  // * reset Value
  void resetCoffee() {
    groupValue = -1;
    notifyListeners();
  }
}
