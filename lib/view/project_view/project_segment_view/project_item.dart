import 'package:ahmad_ghauri_portfolio2/model/project_model/project.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_colors.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_styles.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


import 'project_actions.dart';
import 'project_image.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.project});
  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.primaryLight,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectImage(imageUrl: project.imageUrl),
          const SizedBox(height: 16),
          FittedBox(
            child: Text(
              project.name,
              style: AppStyles.s24.copyWith(color: AppColors.primaryColor),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: AutoSizeText(
              project.description,
              style: AppStyles.s18,
              minFontSize: 12,
              maxLines: 4,
            ),
          ),
          const SizedBox(height: 8),
          // if (project.previewLink != null || project.githubRepoLink != null)
          ProjectActions(project: project)
        ],
      ),
    );
  }
}
