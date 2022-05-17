
import 'package:flutter/material.dart';
import '../../../components/app-bar/main_appbar.dart';
import '../components/drawer_custom/body_drawer.dart';
import '../components/floating_button_home.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'PageHome';
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // * AppBar Main
      appBar: MainAppBar(),
      // * Drawer
      drawer: DrawerBody(),
      // * Handle Create new Order
      floatingActionButton: FloatingButton(),
    );
  }
}
