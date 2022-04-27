import 'package:flutter/material.dart';

import 'header_drawer.dart';
import 'settings_drawer.dart';

class BodyDrawer extends StatelessWidget {
  const BodyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const [
          // * Header
          HeaderDrawer(),
          // * Settings
          SettingDrawer()
        ],
      ),
    );
  }
}
