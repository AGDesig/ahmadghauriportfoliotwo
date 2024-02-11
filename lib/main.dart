import 'package:ahmad_ghauri_portfolio2/res/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:ahmad_ghauri_portfolio2/utils/routes/routes.dart';
import 'package:ahmad_ghauri_portfolio2/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';
import 'viewModel/home_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeViewModel>(create: (context) => HomeViewModel(),),],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
   //     theme: CustomTheme.darkTheme(),
        initialRoute: RoutesName.homeView,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
