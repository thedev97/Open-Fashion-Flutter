import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/search_screen/models/search_model.dart';

/// A provider class for the SearchScreen.
///
/// This provider manages the state of the SearchScreen, including the
/// current searchModelObj
class SearchProvider extends ChangeNotifier {
  SearchModel searchModelObj = SearchModel();

  @override
  void dispose() {
    super.dispose();
  }
}
