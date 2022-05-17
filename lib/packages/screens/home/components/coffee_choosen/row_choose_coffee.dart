import 'package:coffee_shop_v01/packages/screens/home/components/coffee_choosen/coffee_radio.dart';
import 'package:coffee_shop_v01/packages/screens/home/components/manage_state/coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RowChooseCoffee extends StatelessWidget {
  const RowChooseCoffee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ManageStateCoffee _coffeeProvider = Provider.of(context);
    return Row(
      children: [
        ..._coffeeProvider.coffee.map((cof) => CoffeeRadio(coffeeState:cof))
      ],
    );
  }
}
