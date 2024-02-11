
import 'package:ahmad_ghauri_portfolio2/model/project_model/project.dart';
import 'package:ahmad_ghauri_portfolio2/model/utilsModel/custom_service.dart';

import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomServiceModel> services = [
    CustomServiceModel(
      service: 'MOBILE DEVELOPMENT',
      logo: AppAssets.mobileIcon,
      description:
          'I am a mobile developer. I have experience using Dart and Flutter Framework.',
    ),
    CustomServiceModel(
      service: 'WEB APP DEVELOPMENT',
      logo: AppAssets.webIcon,
      description:
          'I create web application using Flutter Framework and Dart',
    ),
    CustomServiceModel(
      service: 'API Integration',
      logo: AppAssets.apiIntegrationIcon,
      description:
          'I integrate Backend as provided by your backend services to fully functional API integration or creating API using Firebase Database',
    ),
  ];
  static const List<ProjectModel> projects = [
    ProjectModel(
      name: 'Covid Tracker App',
      imageUrl: AppAssets.covidTrackerAppTitleAsset,
      description:
          'A football application to display all related matches and rankings in all international and local tournaments',
      //githubRepoLink: 'https://github.com/radyhaggag/live_score',
      //previewLink: 'https://youtu.be/HSIosFd6Sys',
    ),
  ];
}
