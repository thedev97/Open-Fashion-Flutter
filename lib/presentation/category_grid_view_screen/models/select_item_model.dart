import '../../../core/app_export.dart';

/// This class is used in the [select_item_widget] screen.
class SelectItemModel {
  SelectItemModel({
    this.close,
    this.isSelected,
  }) {
    close = close ?? "Women";
    isSelected = isSelected ?? false;
  }

  String? close;

  bool? isSelected;
}
