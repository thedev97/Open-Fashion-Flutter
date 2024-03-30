import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/blog_grid_view_page/models/blog_grid_view_model.dart';
import '../models/post_item_model.dart';
import '../models/fashion1_item_model.dart';

/// A provider class for the BlogGridViewPage.
///
/// This provider manages the state of the BlogGridViewPage, including the
/// current blogGridViewModelObj

// ignore_for_file: must_be_immutable
class BlogGridViewProvider extends ChangeNotifier {
  BlogGridViewModel blogGridViewModelObj = BlogGridViewModel();

  @override
  void dispose() {
    super.dispose();
  }

  /*void onSelectedChipView1(
    int index,
    bool value,
  ) {
    blogGridViewModelObj.fashion1ItemList.forEach((element) {
      element.isSelected = false;
    });
    blogGridViewModelObj.fashion1ItemList[index].isSelected = value;
    notifyListeners();
  }*/
}
