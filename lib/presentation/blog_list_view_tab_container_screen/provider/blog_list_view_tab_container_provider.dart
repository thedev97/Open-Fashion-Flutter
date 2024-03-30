import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/blog_list_view_tab_container_screen/models/blog_list_view_tab_container_model.dart';

/// A provider class for the BlogListViewTabContainerScreen.
///
/// This provider manages the state of the BlogListViewTabContainerScreen, including the
/// current blogListViewTabContainerModelObj
class BlogListViewTabContainerProvider extends ChangeNotifier {
  BlogListViewTabContainerModel blogListViewTabContainerModelObj =
      BlogListViewTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
