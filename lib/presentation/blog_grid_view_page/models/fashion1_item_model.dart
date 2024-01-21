import '../../../core/app_export.dart';

/// This class is used in the [fashion1_item_widget] screen.
class Fashion1ItemModel {
  Fashion1ItemModel({
    this.fashion,
    this.isSelected,
  }) {
    fashion = fashion ?? "#Fashion";
    isSelected = isSelected ?? false;
  }

  String? fashion;

  bool? isSelected;
}
