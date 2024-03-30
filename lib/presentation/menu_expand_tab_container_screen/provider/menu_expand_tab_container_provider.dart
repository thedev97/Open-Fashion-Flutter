import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/menu_expand_tab_container_screen/models/menu_expand_tab_container_model.dart';

/// A provider class for the MenuExpandTabContainerScreen.
///
/// This provider manages the state of the MenuExpandTabContainerScreen, including the
/// current menuExpandTabContainerModelObj
class MenuExpandTabContainerProvider extends ChangeNotifier {
  MenuExpandTabContainerModel menuExpandTabContainerModelObj =
      MenuExpandTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
