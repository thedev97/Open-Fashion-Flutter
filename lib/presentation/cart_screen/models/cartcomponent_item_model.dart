import '../../../core/app_export.dart';

/// This class is used in the [cartcomponent_item_widget] screen.
class CartcomponentItemModel {
  CartcomponentItemModel({
    this.userImage,
    this.titleText,
    this.descriptionText,
    this.quantityText,
    this.priceText,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgRectangle344;
    titleText = titleText ?? "lamerei";
    descriptionText = descriptionText ?? "Recycle Boucle Knit Cardigan Pink";
    quantityText = quantityText ?? "1";
    priceText = priceText ?? "120";
    id = id ?? "";
  }

  String? userImage;

  String? titleText;

  String? descriptionText;

  String? quantityText;

  String? priceText;

  String? id;
}
