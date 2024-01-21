import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/product_detail_layouttwo_screen/models/product_detail_layouttwo_model.dart';
import '../models/productdetaillayouttwo_item_model.dart';
import '../models/userprofile1_item_model.dart';

/// A provider class for the ProductDetailLayouttwoScreen.
///
/// This provider manages the state of the ProductDetailLayouttwoScreen, including the
/// current productDetailLayouttwoModelObj

// ignore_for_file: must_be_immutable
class ProductDetailLayouttwoProvider extends ChangeNotifier {
  ProductDetailLayouttwoModel productDetailLayouttwoModelObj =
      ProductDetailLayouttwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
