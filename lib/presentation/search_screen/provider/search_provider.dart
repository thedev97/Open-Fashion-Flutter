import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/search_screen/models/search_model.dart';

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
