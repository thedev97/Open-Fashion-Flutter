import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/collection_detail_screen/models/collection_detail_model.dart';
import '../models/productlistgrid_item_model.dart';
import '../models/blackcollectiontextlist_item_model.dart';

/// A provider class for the CollectionDetailScreen.
///
/// This provider manages the state of the CollectionDetailScreen, including the
/// current collectionDetailModelObj

// ignore_for_file: must_be_immutable
class CollectionDetailProvider extends ChangeNotifier {
  CollectionDetailModel collectionDetailModelObj = CollectionDetailModel();

  @override
  void dispose() {
    super.dispose();
  }
}
