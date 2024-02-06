import 'package:ahmad_ghauri_portfolio2/model/utilsModel/responsive_size.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_colors.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_extensions.dart';
import 'package:flutter/material.dart';


class CircleImageBorder extends StatelessWidget {
  const CircleImageBorder({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .62,
      ipadSize: context.width * .4,
      smallScreenSize: context.width * .29,
    );
    return Container(
      width: responsiveSize.getSize(),
      height: responsiveSize.getSize(),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
