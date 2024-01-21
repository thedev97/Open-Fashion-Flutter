import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/product_detail_screen/models/product_detail_model.dart';
import '../models/slider_item_model.dart';
import '../models/userprofile_item_model.dart';

/// A provider class for the ProductDetailScreen.
///
/// This provider manages the state of the ProductDetailScreen, including the
/// current productDetailModelObj

// ignore_for_file: must_be_immutable
class ProductDetailProvider extends ChangeNotifier {
  ProductDetailModel productDetailModelObj = ProductDetailModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
