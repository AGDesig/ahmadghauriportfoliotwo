import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_strings.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_styles.dart';
import 'package:flutter/material.dart';

import 'detailed_services_grid.dart';

class DetailedServicesSection extends StatelessWidget {
  const DetailedServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.servicesIOffer,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 32),
        const DetailedServicesGrid(),
      ],
    );
  }
}
