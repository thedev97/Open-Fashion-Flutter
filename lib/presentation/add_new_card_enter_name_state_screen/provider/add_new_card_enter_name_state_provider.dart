import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/add_new_card_enter_name_state_screen/models/add_new_card_enter_name_state_model.dart';
import '../models/userprofile4_item_model.dart';
import '../models/userprofile5_item_model.dart';

/// A provider class for the AddNewCardEnterNameStateScreen.
///
/// This provider manages the state of the AddNewCardEnterNameStateScreen, including the
/// current addNewCardEnterNameStateModelObj

// ignore_for_file: must_be_immutable
class AddNewCardEnterNameStateProvider extends ChangeNotifier {
  TextEditingController floatingTextFieldController = TextEditingController();

  TextEditingController floatingTextFieldController1 = TextEditingController();

  TextEditingController floatingTextFieldController2 = TextEditingController();

  TextEditingController floatingTextFieldController3 = TextEditingController();

  TextEditingController floatingTextFieldController4 = TextEditingController();

  AddNewCardEnterNameStateModel addNewCardEnterNameStateModelObj =
      AddNewCardEnterNameStateModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
    floatingTextFieldController.dispose();
    floatingTextFieldController1.dispose();
    floatingTextFieldController2.dispose();
    floatingTextFieldController3.dispose();
    floatingTextFieldController4.dispose();
  }
}
