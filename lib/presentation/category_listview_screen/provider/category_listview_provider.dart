import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/category_listview_screen/models/category_listview_model.dart';
import '../models/productlist_item_model.dart';

/// A provider class for the CategoryListviewScreen.
///
/// This provider manages the state of the CategoryListviewScreen, including the
/// current categoryListviewModelObj

// ignore_for_file: must_be_immutable
class CategoryListviewProvider extends ChangeNotifier {
  CategoryListviewModel categoryListviewModelObj = CategoryListviewModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in categoryListviewModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
