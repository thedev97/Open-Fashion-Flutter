import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/cart_empty_screen/models/cart_empty_model.dart';

/// A provider class for the CartEmptyScreen.
///
/// This provider manages the state of the CartEmptyScreen, including the
/// current cartEmptyModelObj

// ignore_for_file: must_be_immutable
class CartEmptyProvider extends ChangeNotifier {
  CartEmptyModel cartEmptyModelObj = CartEmptyModel();

  @override
  void dispose() {
    super.dispose();
  }
}
