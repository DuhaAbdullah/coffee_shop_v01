
import 'package:flutter/material.dart';

import '../../components/app-bar/appbar_simple.dart';
import '../../components/app_drawer/drawer_home/body_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'PageHome';
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarSimple(title: 'Home'),
      drawer: BodyDrawer(),
      body: Center(
        child: Text('Home '),
      ),
    );
  }
}
