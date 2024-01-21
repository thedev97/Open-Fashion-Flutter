import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/menu_expand_page/models/menu_expand_model.dart';

/// A provider class for the MenuExpandPage.
///
/// This provider manages the state of the MenuExpandPage, including the
/// current menuExpandModelObj
class MenuExpandProvider extends ChangeNotifier {
  MenuExpandModel menuExpandModelObj = MenuExpandModel();

  @override
  void dispose() {
    super.dispose();
  }
}
