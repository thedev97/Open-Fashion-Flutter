import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/category_grid_view_screen/models/category_grid_view_model.dart';
import '../models/select_item_model.dart';
import '../models/productcomponent_item_model.dart';

/// A provider class for the CategoryGridViewScreen.
///
/// This provider manages the state of the CategoryGridViewScreen, including the
/// current categoryGridViewModelObj

// ignore_for_file: must_be_immutable
class CategoryGridViewProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  CategoryGridViewModel categoryGridViewModelObj = CategoryGridViewModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in categoryGridViewModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    categoryGridViewModelObj.selectItemList.forEach((element) {
      element.isSelected = false;
    });
    categoryGridViewModelObj.selectItemList[index].isSelected = value;
    notifyListeners();
  }
}
