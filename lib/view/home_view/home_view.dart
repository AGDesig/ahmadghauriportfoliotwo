import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_colors.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_enums.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_extensions.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_styles.dart';
import 'package:ahmad_ghauri_portfolio2/view/about_me_view/aboutme_view.dart';
import 'package:ahmad_ghauri_portfolio2/view/home_view/home_segment_view/intro_segment_view.dart';
import 'package:ahmad_ghauri_portfolio2/view/project_view/project_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        automaticallyImplyLeading: false,
        leadingWidth: double.maxFinite,
        leading: Padding(
            padding: homeEdgeInsets(context),
            child: Text("Ahmad Ghauri", style: AppStyles.s32)),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                  child: Text("Home", style: AppStyles.s18AppBarActions))),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
                child: Text("About me", style: AppStyles.s18AppBarActions)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
                child: Text("Projects", style: AppStyles.s18AppBarActions)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
                child: Text("Contact", style: AppStyles.s18AppBarActions)),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * .08),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  IntroSegmentView(),
                  AboutMeView(),
                  ProjectView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  EdgeInsets homeEdgeInsets(BuildContext context,
      {webSizeLeft, mobileSizeLeft}) {
    return EdgeInsets.only(
        left: context.width < DeviceType.mobile.getMaxWidth()
            ? context.width - 20
            : context.width * 0.09);
  }
}
