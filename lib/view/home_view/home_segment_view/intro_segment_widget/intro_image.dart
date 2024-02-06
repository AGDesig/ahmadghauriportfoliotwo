import 'package:ahmad_ghauri_portfolio2/model/utilsModel/responsive_size.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_assets.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_colors.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_enums.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_extensions.dart';
import 'package:ahmad_ghauri_portfolio2/utils/custom_components/widgets/custom_button.dart';
import 'package:ahmad_ghauri_portfolio2/view/home_view/home_segment_view/intro_segment_widget/circle_image_border.dart';
import 'package:ahmad_ghauri_portfolio2/view/home_view/home_segment_view/intro_segment_widget/intro_image.dart';
import 'package:flutter/material.dart';

class IntroImage extends StatelessWidget {
  const IntroImage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .55,
      ipadSize: context.width * .36,
      smallScreenSize: context.width * .26,
    );

    return Positioned(
      // alignment: Alignment.topRight,
      top: 0,
      right: 20,
      child: Image.asset(
        AppAssets.devImg,
        width: responsiveSize.getSize(),
        height: responsiveSize.getSize(),
      ),
    );
  }
}
