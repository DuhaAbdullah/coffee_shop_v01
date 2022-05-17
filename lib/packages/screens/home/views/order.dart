import 'package:coffee_shop_v01/packages/components/app-bar/main_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/coffee_choosen/row_choose_coffee.dart';


class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);
  static const String routeName = 'OrderScreen';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const MainAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w , vertical: 20.w),
          child: Column(
            children: const [
            // * choose Coffee
            RowChooseCoffee(),
            ],
          ),
        ),
      ),
    );
  }
}
