import 'package:ahmad_ghauri_portfolio2/model/utilsModel/responsive_size.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_extensions.dart';
import 'package:ahmad_ghauri_portfolio2/view/home_view/home_segment_view/intro_segment_widget/circle_image_border.dart';
import 'package:ahmad_ghauri_portfolio2/view/home_view/home_segment_view/intro_segment_widget/intro_image.dart';
import 'package:flutter/material.dart';

class IntroCircleImageBox extends StatelessWidget {
  const IntroCircleImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .78,
      ipadSize: context.width * .50,
      smallScreenSize: context.width * .37,
    );
    return SizedBox(
      height: responsiveSize.getSize(),
      child: const Stack(
        alignment: Alignment.centerRight,
        children: [
          CircleImageBorder(),
          IntroImage(),
        ],
      ),
    );
  }
}
