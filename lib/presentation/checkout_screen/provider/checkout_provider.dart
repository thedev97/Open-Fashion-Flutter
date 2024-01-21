import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/checkout_screen/models/checkout_model.dart';

/// A provider class for the CheckoutScreen.
///
/// This provider manages the state of the CheckoutScreen, including the
/// current checkoutModelObj
class CheckoutProvider extends ChangeNotifier {
  TextEditingController plusController = TextEditingController();

  CheckoutModel checkoutModelObj = CheckoutModel();

  @override
  void dispose() {
    super.dispose();
    plusController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in checkoutModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
