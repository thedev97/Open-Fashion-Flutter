import '../../../core/app_export.dart';

/// This class is used in the [frameeleven_item_widget] screen.
class FrameelevenItemModel {
  FrameelevenItemModel({
    this.frameEleven,
    this.isSelected,
  }) {
    frameEleven = frameEleven ?? "#2021";
    isSelected = isSelected ?? false;
  }

  String? frameEleven;

  bool? isSelected;
}
