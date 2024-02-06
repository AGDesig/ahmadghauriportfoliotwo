import 'package:flutter/material.dart';

import 'project_segment_view/projects_grid.dart';
import 'project_segment_view/projects_intro.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectsIntro(),
          SizedBox(height: 52),
          ProjectsGrid(),
        ],
      ),
    );
  }
}
