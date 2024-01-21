import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/icon_screen/models/icon_model.dart';
import '../models/icon_item_model.dart';

/// A provider class for the IconScreen.
///
/// This provider manages the state of the IconScreen, including the
/// current iconModelObj

// ignore_for_file: must_be_immutable
class IconProvider extends ChangeNotifier {
  IconModel iconModelObj = IconModel();

  @override
  void dispose() {
    super.dispose();
  }
}
