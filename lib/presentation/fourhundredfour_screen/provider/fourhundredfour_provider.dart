import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/fourhundredfour_screen/models/fourhundredfour_model.dart';

/// A provider class for the FourhundredfourScreen.
///
/// This provider manages the state of the FourhundredfourScreen, including the
/// current fourhundredfourModelObj
class FourhundredfourProvider extends ChangeNotifier {
  FourhundredfourModel fourhundredfourModelObj = FourhundredfourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
