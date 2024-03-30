import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/menu_page/models/menu_model.dart';

/// A provider class for the MenuPage.
///
/// This provider manages the state of the MenuPage, including the
/// current menuModelObj
class MenuProvider extends ChangeNotifier {
  MenuModel menuModelObj = MenuModel();

  @override
  void dispose() {
    super.dispose();
  }
}
