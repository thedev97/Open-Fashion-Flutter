import '../../../core/app_export.dart';

/// This class is used in the [chipviewclose_item_widget] screen.
class ChipviewcloseItemModel {
  ChipviewcloseItemModel({
    this.close,
    this.isSelected,
  }) {
    close = close ?? "Dress";
    isSelected = isSelected ?? false;
  }

  String? close;

  bool? isSelected;
}
