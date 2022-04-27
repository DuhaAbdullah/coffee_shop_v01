import 'package:flutter/material.dart';

import '../packages/screens/auth/view/sign_in_screen.dart';
import '../packages/screens/home/home.dart';
import '../packages/screens/splash/views/body.dart';

class AppRoute {
  static Map<String, WidgetBuilder> route = {
    SplashScreen.routeName: (context) => const SplashScreen(),
    SignInScreen.routeName: (context) => const SignInScreen(),
    HomeScreen.routeName: (context) => const HomeScreen(),
  };
}
