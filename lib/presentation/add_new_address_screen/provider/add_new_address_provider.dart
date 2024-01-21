import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/add_new_address_screen/models/add_new_address_model.dart';

/// A provider class for the AddNewAddressScreen.
///
/// This provider manages the state of the AddNewAddressScreen, including the
/// current addNewAddressModelObj
class AddNewAddressProvider extends ChangeNotifier {
  TextEditingController firstNameEditTextController = TextEditingController();

  TextEditingController lastNameEditTextController = TextEditingController();

  TextEditingController addressEditTextController = TextEditingController();

  TextEditingController cityEditTextController = TextEditingController();

  TextEditingController zipcodeEditTextController = TextEditingController();

  AddNewAddressModel addNewAddressModelObj = AddNewAddressModel();

  @override
  void dispose() {
    super.dispose();
    firstNameEditTextController.dispose();
    lastNameEditTextController.dispose();
    addressEditTextController.dispose();
    cityEditTextController.dispose();
    zipcodeEditTextController.dispose();
  }
}
