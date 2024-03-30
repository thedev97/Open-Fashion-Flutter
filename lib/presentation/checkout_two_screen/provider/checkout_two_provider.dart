import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/checkout_two_screen/models/checkout_two_model.dart';

/// A provider class for the CheckoutTwoScreen.
///
/// This provider manages the state of the CheckoutTwoScreen, including the
/// current checkoutTwoModelObj
class CheckoutTwoProvider extends ChangeNotifier {
  CheckoutTwoModel checkoutTwoModelObj = CheckoutTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
