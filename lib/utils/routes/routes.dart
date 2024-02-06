import 'package:ahmad_ghauri_portfolio2/view/home_view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:ahmad_ghauri_portfolio2/utils/routes/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.homeView:
        return MaterialPageRoute(builder: (context) => HomeView(),);
      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text("No route defined"),
            ),
          );
        },);
    }

  }
}