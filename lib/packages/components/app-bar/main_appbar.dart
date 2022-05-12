import 'package:coffee_shop_v01/utils/path_images.dart';
import '../../../language/generated/key_lang.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key, String title = KeyLang.nameApp})
      : _title = title,
        super(key: key);
  final String _title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(_title.tr()),
      actions: [
        Transform.scale(
          scale: 2,
          child: Padding(
            padding: EdgeInsets.all(2.h),
            child: const Image(
              image: AssetImage(PathImages.logo),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
