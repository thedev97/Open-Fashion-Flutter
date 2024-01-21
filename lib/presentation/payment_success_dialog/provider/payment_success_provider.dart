import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/payment_success_dialog/models/payment_success_model.dart';

/// A provider class for the PaymentSuccessDialog.
///
/// This provider manages the state of the PaymentSuccessDialog, including the
/// current paymentSuccessModelObj

// ignore_for_file: must_be_immutable
class PaymentSuccessProvider extends ChangeNotifier {
  PaymentSuccessModel paymentSuccessModelObj = PaymentSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
