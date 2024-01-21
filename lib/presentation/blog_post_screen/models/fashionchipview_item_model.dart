import '../../../core/app_export.dart';

/// This class is used in the [fashionchipview_item_widget] screen.
class FashionchipviewItemModel {
  FashionchipviewItemModel({
    this.fashion,
    this.isSelected,
  }) {
    fashion = fashion ?? "#Fashion";
    isSelected = isSelected ?? false;
  }

  String? fashion;

  bool? isSelected;
}
