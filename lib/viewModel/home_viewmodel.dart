import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_enums.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_extensions.dart';
import 'package:ahmad_ghauri_portfolio2/utils/app_color_constant_string/app_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  Widget _actionWidgetToDisplay = Text("what is being shown");
  AppBarHeaders? _selectedMenu;


  Widget get actionWidgetToDisplay => _actionWidgetToDisplay;

}
