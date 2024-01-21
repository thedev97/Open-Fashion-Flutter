import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/contact_us_screen/models/contact_us_model.dart';

/// A provider class for the ContactUsScreen.
///
/// This provider manages the state of the ContactUsScreen, including the
/// current contactUsModelObj
class ContactUsProvider extends ChangeNotifier {
  ContactUsModel contactUsModelObj = ContactUsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
