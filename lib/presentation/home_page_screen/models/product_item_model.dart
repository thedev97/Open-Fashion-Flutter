import '../../../core/app_export.dart';

/// This class is used in the [product_item_widget] screen.
class ProductItemModel {
  ProductItemModel({
    this.image,
    this.harrisTweedThree,
    this.oneHundredTwenty,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle321;
    harrisTweedThree = harrisTweedThree ?? "Harris Tweed Three button Jacket";
    oneHundredTwenty = oneHundredTwenty ?? "120";
    id = id ?? "";
  }

  String? image;

  String? harrisTweedThree;

  String? oneHundredTwenty;

  String? id;
}
