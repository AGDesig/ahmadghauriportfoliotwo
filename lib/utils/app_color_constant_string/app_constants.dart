
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
      githubRepoLink: 'https://github.com/radyhaggag/live_score',
      previewLink: 'https://youtu.be/HSIosFd6Sys',
    ),
    ProjectModel(
      name: 'Instagram clone',
      imageUrl:
          'https://drive.google.com/uc?id=1qNFCNYdUo7o36ythQtjaSrv7L0NV_Vnv',
      description:
          'Social media application for share posts and stories with people, One-to-one chat, Share reels videos',
      githubRepoLink:
          'https://github.com/radyhaggag/Instagram-Clone-With-Clean-Architecture',
      previewLink: 'https://youtu.be/MuuVjqrR49g',
    ),
    ProjectModel(
      name: 'TikTok Downloader',
      imageUrl:
          'https://drive.google.com/uc?id=1SypuIPVdokg0O4DYoYdswRowlIJAGgIq',
      description:
          'An application for download videos from tiktok and save it to gallery.',
      githubRepoLink: 'https://github.com/radyhaggag/tiktok_downloader',
      previewLink: 'https://youtu.be/mWeA625pcrI',
    ),
    ProjectModel(
      name: 'Bookly',
      imageUrl:
          'https://drive.google.com/uc?id=1yQtoq-wjVejWPXRI7gzGMXPUZrRob8kY',
      description: 'An application to explore books and view their details.',
      githubRepoLink:
          'https://github.com/radyhaggag/bookly_app_with_mvvm_and_bloc',
      previewLink: 'https://youtu.be/3nU_dYjsPsg',
    ),
    ProjectModel(
      name: 'Image processing',
      imageUrl:
          'https://drive.google.com/uc?id=1hd7U3HgoDqXEi9eDKYjrY9iqlWa6qt8E',
      description:
          'An Desktop program for process images and apply some filters to them.',
      githubRepoLink:
          'https://github.com/radyhaggag/image_processing_program_with_python_flet',
      previewLink: 'https://youtu.be/s1KFdBKNFig',
    ),
    ProjectModel(
      name: 'Salat al janazah',
      imageUrl:
          'https://drive.google.com/uc?id=1UpCGckOS46GdTuHU4wuj7Abo_97gxe_E',
      description:
          'An application for add janazah prayer and view the prayers for nearby people',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.SJY.salataljanaza',
      previewLink: 'https://youtu.be/wK9Y9BhP190',
    ),
    ProjectModel(
      name: 'Ghaslah',
      imageUrl:
          'https://drive.google.com/uc?id=1ed4H2-cH6yk_kVkDdxOLcUkgP1xpuo72',
      description:
          'An application for add wash cars reservation with location in map and the picker will come to wash the cars',
      previewLink: 'https://youtu.be/gkeRSAfCZaI',
    ),
    ProjectModel(
      name: 'Zawilan',
      imageUrl:
          'https://drive.google.com/uc?id=1ElTwguynMLqhS295-IE7bTTabsZGZp8s',
      description:
          'Zwailan is an education app based on units and sections system, you start by sign up on app and wait until the teacher accept your join request.',
      previewLink: 'https://youtu.be/g92W-SmfkKc',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.radyhaggag.zawilan',
    ),
  ];
}
