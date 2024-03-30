import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/full_screen/models/full_model.dart';

/// A provider class for the FullScreen.
///
/// This provider manages the state of the FullScreen, including the
/// current fullModelObj
class FullProvider extends ChangeNotifier {
  FullModel fullModelObj = FullModel();

  @override
  void dispose() {
    super.dispose();
  }
}
