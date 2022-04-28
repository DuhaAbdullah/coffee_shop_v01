import 'package:coffee_shop_v01/utils/path_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderAuth extends StatelessWidget {
  const HeaderAuth({Key? key ,  double height = 150}) : _height = height , super(key: key);

  final double _height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      margin: EdgeInsets.symmetric(vertical: 15.h),
      child: Row(
        //* arrow back

        //* logo
        Image(image: PathImages.logo,)
      ),
    );
  }
}
