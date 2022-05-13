import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/svg.dart';

class CustomListDrawer extends StatelessWidget {
  const CustomListDrawer({
    Key? key,
    required SvgPicture icon,
    required String title,
    required void Function() onTap,
    Widget? iconTrailing,
  })  : _icon = icon,
        _title = title,
        _onTap = onTap,
        _iconTrailing = iconTrailing,
        super(key: key);

  final SvgPicture _icon;
  final String _title;
  final void Function() _onTap;
  final Widget? _iconTrailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: _onTap,
      leading: _icon,
      title: Text(_title.tr()),
      trailing: _iconTrailing,
    );
  }
}
