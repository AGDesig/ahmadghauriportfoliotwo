import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_colors.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_enums.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_extensions.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_styles.dart';
import 'package:ahmad_ghauri_portfolio2/view/about_me_view/aboutme_view.dart';
import 'package:ahmad_ghauri_portfolio2/view/home_view/home_segment_view/intro_segment_view.dart';
import 'package:ahmad_ghauri_portfolio2/view/project_view/project_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // final ScrollController _controller = ScrollController();
  final introKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectKey = GlobalKey();
  final contactKey = GlobalKey();
  AppBarHeaders? _selectedMenu;

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
        actions: setHomeAction(),
      ),
      body: Stack(
        children: [
          Padding(
             padding: EdgeInsets.symmetric(horizontal: context.width * .08),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  IntroSegmentView(key: introKey),
                  AboutMeView(key: aboutKey),
                  ProjectView(key: projectKey),
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
            ? context.width * 0.04
            : context.width * 0.09);
  }

  setHomeAction() {
    var finalWidget;
    if (context.width < DeviceType.mobile.getMaxWidth()) {
      finalWidget = [
        PopupMenuButton<AppBarHeaders>(
          initialValue: _selectedMenu,
          // Callback that sets the selected popup menu item.
          onSelected: (AppBarHeaders item) {
            _selectedMenu = item;
          },
          itemBuilder: (BuildContext context) =>
              <PopupMenuEntry<AppBarHeaders>>[
            PopupMenuItem<AppBarHeaders>(
              onTap: () => Scrollable.ensureVisible(introKey.currentContext!),
              value: AppBarHeaders.home,
              child: Text('Home'),
            ),
            PopupMenuItem<AppBarHeaders>(
              onTap: () => Scrollable.ensureVisible(aboutKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              value: AppBarHeaders.aboutMe,
              child: Text('About me'),
            ),
            PopupMenuItem<AppBarHeaders>(
              onTap: () => Scrollable.ensureVisible(projectKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              value: AppBarHeaders.projects,
              child: Text('Projects'),
            ),
            PopupMenuItem<AppBarHeaders>(
              onTap: () => Scrollable.ensureVisible(contactKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              value: AppBarHeaders.contact,
              child: Text('Contacts'),
            ),
          ],
        ),
      ];
    } else if (context.width < DeviceType.ipad.getMaxWidth()) {
      finalWidget = [
        PopupMenuButton<AppBarHeaders>(
          initialValue: _selectedMenu,
          // Callback that sets the selected popup menu item.
          onSelected: (AppBarHeaders item) {
            _selectedMenu = item;
          },
          itemBuilder: (BuildContext context) =>
              <PopupMenuEntry<AppBarHeaders>>[
            PopupMenuItem<AppBarHeaders>(
              onTap: () => Scrollable.ensureVisible(introKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              value: AppBarHeaders.home,
              child: Text('Home'),
            ),
            PopupMenuItem<AppBarHeaders>(
              onTap: () => Scrollable.ensureVisible(aboutKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              value: AppBarHeaders.aboutMe,
              child: Text('About me'),
            ),
            PopupMenuItem<AppBarHeaders>(
              onTap: () => Scrollable.ensureVisible(projectKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              value: AppBarHeaders.projects,
              child: Text('Projects'),
            ),
            PopupMenuItem<AppBarHeaders>(
              onTap: () => Scrollable.ensureVisible(contactKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              value: AppBarHeaders.contact,
              child: Text('Contacts'),
            ),
          ],
        ),
      ];
    } else if (context.width < DeviceType.smallScreenLaptop.getMaxWidth()) {
      finalWidget = [
        Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
                onTap: () => Scrollable.ensureVisible(introKey.currentContext!,
                    duration: Duration(milliseconds: 500)),
                child: Text("Home", style: AppStyles.s18AppBarActions))),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
              onTap: () => Scrollable.ensureVisible(aboutKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              child: Text("About me", style: AppStyles.s18AppBarActions)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
              onTap: () => Scrollable.ensureVisible(projectKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              child: Text("Projects", style: AppStyles.s18AppBarActions)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
              onTap: () => Scrollable.ensureVisible(contactKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              child: Text("Contact", style: AppStyles.s18AppBarActions)),
        ),
      ];
    } else if (context.width < DeviceType.largeScreenDesktop.getMaxWidth()) {
      finalWidget = [
        Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
                onTap: () => Scrollable.ensureVisible(introKey.currentContext!,
                    duration: Duration(milliseconds: 500)),
                child: Text("Home", style: AppStyles.s18AppBarActions))),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
              onTap: () => Scrollable.ensureVisible(aboutKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              child: Text("About me", style: AppStyles.s18AppBarActions)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
              onTap: () => Scrollable.ensureVisible(projectKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              child: Text("Projects", style: AppStyles.s18AppBarActions)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
              onTap: () => Scrollable.ensureVisible(contactKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              child: Text("Contact", style: AppStyles.s18AppBarActions)),
        ),
      ];
    } else if (context.width < DeviceType.extraLargeTV.getMaxWidth()) {
      finalWidget = [
        Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
                onTap: () => Scrollable.ensureVisible(introKey.currentContext!,
                    duration: Duration(milliseconds: 500)),
                child: Text("Home", style: AppStyles.s18AppBarActions))),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
              onTap: () => Scrollable.ensureVisible(aboutKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              child: Text("About me", style: AppStyles.s18AppBarActions)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
              onTap: () => Scrollable.ensureVisible(projectKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              child: Text("Projects", style: AppStyles.s18AppBarActions)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
              onTap: () => Scrollable.ensureVisible(contactKey.currentContext!,
                  duration: Duration(milliseconds: 500)),
              child: Text("Contact", style: AppStyles.s18AppBarActions)),
        ),
      ];
    }
    return finalWidget;
  }
}
