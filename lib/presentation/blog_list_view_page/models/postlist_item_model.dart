import '../../../core/app_export.dart';

/// This class is used in the [postlist_item_widget] screen.
class PostlistItemModel {
  PostlistItemModel({
    this.imageText,
    this.excitementText,
    this.styleGuideText,
    this.timeText,
    this.id,
  }) {
    imageText = imageText ?? ImageConstant.imgRectangle433;
    excitementText = excitementText ??
        "The excitement of fall fashion is here and I’m already loving some of the trend forecasts ";
    styleGuideText =
        styleGuideText ?? "2021 Style Guide: \nThe Biggest Fall Trends";
    timeText = timeText ?? "4 days ago";
    id = id ?? "";
  }

  String? imageText;

  String? excitementText;

  String? styleGuideText;

  String? timeText;

  String? id;
}
