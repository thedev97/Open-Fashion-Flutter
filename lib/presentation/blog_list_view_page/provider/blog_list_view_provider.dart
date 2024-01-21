import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/blog_list_view_page/models/blog_list_view_model.dart';
import '../models/postlist_item_model.dart';

/// A provider class for the BlogListViewPage.
///
/// This provider manages the state of the BlogListViewPage, including the
/// current blogListViewModelObj

// ignore_for_file: must_be_immutable
class BlogListViewProvider extends ChangeNotifier {
  BlogListViewModel blogListViewModelObj = BlogListViewModel();

  @override
  void dispose() {
    super.dispose();
  }
}
