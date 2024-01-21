import '../../../core/app_export.dart';

/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {
  ProductcardItemModel({
    this.image,
    this.title,
    this.price,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle325;
    title = title ?? "21WN reversible angora cardigan";
    price = price ?? "120";
    id = id ?? "";
  }

  String? image;

  String? title;

  String? price;

  String? id;
}
