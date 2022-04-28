
import 'package:coffee_shop_v01/utils/path_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSvg {
  static final SvgPicture dTranslate = SvgPicture.asset(
    PathIcons.language,
    width: 25.w,
    height: 25.h,
  );
  static final SvgPicture dTheme = SvgPicture.asset(
    PathIcons.theme,
    width: 25.w,
    height: 25.h,
  );
  static final SvgPicture dlogout = SvgPicture.asset(
    PathIcons.logout,
    width: 25.w,
    height: 25.h,
  );
}
