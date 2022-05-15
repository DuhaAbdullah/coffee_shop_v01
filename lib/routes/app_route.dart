import 'package:coffee_shop_v01/packages/screens/home/views/order.dart';
import 'package:flutter/material.dart';

import '../packages/screens/auth/view/forgot_password_screen.dart';
import '../packages/screens/auth/view/sign_in_screen.dart';
import '../packages/screens/auth/view/sign_up_screen.dart';
import '../packages/screens/home/home.dart';
import '../packages/screens/splash/views/body.dart';

class AppRoute {
  static Map<String, WidgetBuilder> route = {
    SplashScreen.routeName: (context) => const SplashScreen(),
    SignInScreen.routeName: (context) => const SignInScreen(),
    SignUpScreen.routeName: (context) => const SignUpScreen(),
    HomeScreen.routeName: (context) => const HomeScreen(),
    ForgotPasswordScreen.routeName: (context) => const  ForgotPasswordScreen(),
    OrderScreen.routeName: (context) => const OrderScreen(),
  };
}
