import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/fourhundredfour_screen/models/fourhundredfour_model.dart';

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
