import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_colors.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_enums.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_extensions.dart';
import 'package:ahmad_ghauri_portfolio2/utils/custom_components/widgets/custom_button.dart';
import 'package:flutter/material.dart';


class IntoActions extends StatelessWidget {
  const IntoActions({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [
      CustomButton(
        label: AppBarHeaders.aboutMe.getString(),
        icon: Icons.person,
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
        },
        width: 160,
      ),
      context.width < DeviceType.ipad.getMaxWidth()
          ? const SizedBox(height: 6)
          : const SizedBox(width: 32),
      CustomButton(
        label: AppBarHeaders.projects.getString(),
        icon: Icons.remove_red_eye,
        borderColor: AppColors.primaryColor,
        onPressed: () {

        },
        width: 160,
      ),
    ];
    return context.width < DeviceType.ipad.getMaxWidth()
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: actions,
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: actions,
          );
  }
}
