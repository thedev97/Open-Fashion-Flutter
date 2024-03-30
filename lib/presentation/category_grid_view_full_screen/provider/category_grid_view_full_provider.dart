import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/category_grid_view_full_screen/models/category_grid_view_full_model.dart';
import '../models/tag_item_model.dart';

/// A provider class for the CategoryGridViewFullScreen.
///
/// This provider manages the state of the CategoryGridViewFullScreen, including the
/// current categoryGridViewFullModelObj

// ignore_for_file: must_be_immutable
class CategoryGridViewFullProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  CategoryGridViewFullModel categoryGridViewFullModelObj =
      CategoryGridViewFullModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in categoryGridViewFullModelObj.dropdownItemList) {
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
    categoryGridViewFullModelObj.tagItemList.forEach((element) {
      element.isSelected = false;
    });
    categoryGridViewFullModelObj.tagItemList[index].isSelected = value;
    notifyListeners();
  }
}
