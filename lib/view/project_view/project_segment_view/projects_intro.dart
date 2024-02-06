import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_strings.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_styles.dart';
import 'package:flutter/material.dart';


class ProjectsIntro extends StatelessWidget {
  const ProjectsIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.featuredProjects,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.projectsMsg,
          style: AppStyles.s18,
          softWrap: true,
        ),
      ],
    );
  }
}
