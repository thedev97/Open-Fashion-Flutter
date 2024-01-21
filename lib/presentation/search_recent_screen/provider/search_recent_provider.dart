import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/search_recent_screen/models/search_recent_model.dart';
import '../models/chipviewclose_item_model.dart';

/// A provider class for the SearchRecentScreen.
///
/// This provider manages the state of the SearchRecentScreen, including the
/// current searchRecentModelObj

// ignore_for_file: must_be_immutable
class SearchRecentProvider extends ChangeNotifier {
  SearchRecentModel searchRecentModelObj = SearchRecentModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    searchRecentModelObj.chipviewcloseItemList.forEach((element) {
      element.isSelected = false;
    });
    searchRecentModelObj.chipviewcloseItemList[index].isSelected = value;
    notifyListeners();
  }
}
