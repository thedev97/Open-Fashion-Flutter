import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/checkout_one_screen/models/checkout_one_model.dart';

/// A provider class for the CheckoutOneScreen.
///
/// This provider manages the state of the CheckoutOneScreen, including the
/// current checkoutOneModelObj
class CheckoutOneProvider extends ChangeNotifier {
  CheckoutOneModel checkoutOneModelObj = CheckoutOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
