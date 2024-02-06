import 'package:ahmad_ghauri_portfolio2/model/project_model/project.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_colors.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../../../utils/custom_components/widgets/custom_button.dart';

class ProjectActions extends StatelessWidget {
  const ProjectActions({super.key, required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (project.previewLink != null)
            Expanded(
              child: CustomButton(
                label: 'Preview',
                backgroundColor: AppColors.primaryColor,
                onPressed: () {
                  html.window.open(project.previewLink!, '_blank');
                },
              ),
            ),
          if (project.githubRepoLink != null) ...[
            if (project.previewLink != null) const SizedBox(width: 18),
            Expanded(
              child: CustomButton(
                label: 'Github',
                borderColor: AppColors.primaryColor,
                onPressed: () {
                  html.window.open(project.githubRepoLink!, '_blank');
                },
              ),
            ),
          ],
          if (project.googlePlay != null) ...[
            if (project.previewLink != null || project.githubRepoLink != null)
              const SizedBox(width: 18),
            Expanded(
              child: CustomButton(
                label: 'play store',
                borderColor: AppColors.primaryColor,
                onPressed: () {
                  html.window.open(project.googlePlay!, '_blank');
                },
              ),
            ),
          ],
          if (project.previewLink == null &&
              project.githubRepoLink == null &&
              project.googlePlay == null)
            Expanded(
              child: CustomButton(
                label: 'No actions available',
                borderColor: AppColors.primaryColor,
                onPressed: () {},
              ),
            )
        ],
      ),
    );
  }
}
