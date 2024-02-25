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
      description: 'I create web application using Flutter Framework and Dart',
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
          'An application that shows the world wide covid cases and keep you update with covid cases',
      githubRepoLink: 'https://github.com/AGDesig/Covid-Trackerapp',
      //previewLink: 'https://youtu.be/HSIosFd6Sys',
    ),
    ProjectModel(
      name: 'Jingle Street',
      imageUrl: AppAssets.jingleStreetAppTitleAsset,
      description:
          'A Food delivery and shopping application where you can buy food. its not just vendor deliver the food also vendor can bring his Mobile shop at your door step as well. a very wonderful unique way to find customers.',
      githubRepoLink: 'https://github.com/AGDesig/jinglestreet',
      //previewLink: 'https://youtu.be/HSIosFd6Sys',
    ),
    ProjectModel(
      name: 'AI Food',
      imageUrl: AppAssets.aiFoodAppTitleAsset,
      description:
          'An AI Recipe Application that generate recipes by providing food Ideas and it will help you assist and suggest you best recipes of your ideas.',
      githubRepoLink: 'https://github.com/AGDesig/aifood',
      //previewLink: 'https://youtu.be/HSIosFd6Sys',
    ),
    ProjectModel(
      name: 'Website being updating',
      imageUrl: "",
      description:
          'Wait',
    //  githubRepoLink: 'https://github.com/AGDesig/aifood',
      //previewLink: 'https://youtu.be/HSIosFd6Sys',
    ),
  ];
}
