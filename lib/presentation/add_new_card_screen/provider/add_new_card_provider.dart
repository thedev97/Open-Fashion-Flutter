import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/add_new_card_screen/models/add_new_card_model.dart';
import '../models/userprofile2_item_model.dart';
import '../models/userprofile3_item_model.dart';

/// A provider class for the AddNewCardScreen.
///
/// This provider manages the state of the AddNewCardScreen, including the
/// current addNewCardModelObj

// ignore_for_file: must_be_immutable
class AddNewCardProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  AddNewCardModel addNewCardModelObj = AddNewCardModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    cardNumberController.dispose();
    inputController.dispose();
    dateController.dispose();
    cvvController.dispose();
  }
}
