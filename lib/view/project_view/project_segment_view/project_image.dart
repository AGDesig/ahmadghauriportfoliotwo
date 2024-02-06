import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      fit: FlexFit.tight,
      child: Image.asset(
        "${imageUrl}",
        width: double.infinity,
        fit: BoxFit.cover,
        // errorWidget: (context, url, error) {
        //   return Icon(
        //     Icons.error,
        //     color: AppColors.darkColor,
        //     size: 50,
        //   );
        // },
      ),
    );
  }
}
