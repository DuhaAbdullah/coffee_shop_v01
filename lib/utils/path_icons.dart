
import '../Themes/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class PathIcons {
  // Email
  static final FaIcon emailIcon = FaIcon(
    FontAwesomeIcons.envelope,
    color: AppColors.bgDark,
  );

  // password
  static final FaIcon passIcon = FaIcon(
    FontAwesomeIcons.userLock,
    color: AppColors.bgDark,
  );

  static final FaIcon eyeIcon = FaIcon(
    FontAwesomeIcons.eye,
    color: AppColors.bgGreenBold,
  );

  static final FaIcon eyeSlashIcon = FaIcon(
    FontAwesomeIcons.eyeSlash,
    color: AppColors.bgGreenBold,
  );

  static const String language = 'assets/icons/language.svg';
  static const String theme = 'assets/icons/paint.svg';
  static const String logout = 'assets/icons/logout.svg';
}