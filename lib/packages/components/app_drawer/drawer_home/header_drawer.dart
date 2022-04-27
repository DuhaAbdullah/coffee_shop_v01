import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Themes/app_colors.dart';
import '../../../../services/themes/theme_status.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 20),
              // *  image
              const CircleAvatar(
                radius: 30,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // * name
                    Text(
                      'MOhamed Elsayed',
                      style: GoogleFonts.pacifico(),
                    ),
                    SizedBox(height: 8.h),
                    // * email
                    const Text(
                      'mohamed@gmail.com',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),

          // * Divider
          Divider(
            color: AppTheme.isDark(context)
                ? AppColors.bgWhite
                : AppColors.bgBlack.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
