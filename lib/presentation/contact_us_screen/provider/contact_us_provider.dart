import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/contact_us_screen/models/contact_us_model.dart';

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
