import '../../../core/app_export.dart';

/// This class is used in the [tag_item_widget] screen.
class TagItemModel {
  TagItemModel({
    this.tag,
    this.isSelected,
  }) {
    tag = tag ?? "Women";
    isSelected = isSelected ?? false;
  }

  String? tag;

  bool? isSelected;
}
