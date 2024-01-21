import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/blog_post_screen/models/blog_post_model.dart';
import '../models/widgetslider_item_model.dart';
import '../models/fashionchipview_item_model.dart';

/// A provider class for the BlogPostScreen.
///
/// This provider manages the state of the BlogPostScreen, including the
/// current blogPostModelObj

// ignore_for_file: must_be_immutable
class BlogPostProvider extends ChangeNotifier {
  BlogPostModel blogPostModelObj = BlogPostModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    blogPostModelObj.fashionchipviewItemList.forEach((element) {
      element.isSelected = false;
    });
    blogPostModelObj.fashionchipviewItemList[index].isSelected = value;
    notifyListeners();
  }
}
