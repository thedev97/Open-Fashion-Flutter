import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/search_view_screen/models/search_view_model.dart';
import '../models/productgrid_item_model.dart';

/// A provider class for the SearchViewScreen.
///
/// This provider manages the state of the SearchViewScreen, including the
/// current searchViewModelObj

// ignore_for_file: must_be_immutable
class SearchViewProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  SearchViewModel searchViewModelObj = SearchViewModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in searchViewModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
