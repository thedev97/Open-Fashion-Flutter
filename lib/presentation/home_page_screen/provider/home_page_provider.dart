import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/presentation/home_page_screen/models/home_page_model.dart';
import '../models/productcard_item_model.dart';
import '../models/product_item_model.dart';
import '../models/frameeleven_item_model.dart';
import '../models/username_item_model.dart';

/// A provider class for the HomePageScreen.
///
/// This provider manages the state of the HomePageScreen, including the
/// current homePageModelObj

// ignore_for_file: must_be_immutable
class HomePageProvider extends ChangeNotifier {
  HomePageModel homePageModelObj = HomePageModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    homePageModelObj.frameelevenItemList.forEach((element) {
      element.isSelected = false;
    });
    homePageModelObj.frameelevenItemList[index].isSelected = value;
    notifyListeners();
  }
}
