import '../../../core/app_export.dart';

/// This class is used in the [productlist_item_widget] screen.
class ProductlistItemModel {
  ProductlistItemModel({
    this.userImage,
    this.title,
    this.description,
    this.price,
    this.ratingImage,
    this.ratingText,
    this.sizeLabel,
    this.sizeS,
    this.sizeM,
    this.sizeL,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgRectangle344220x165;
    title = title ?? "lamerei";
    description = description ?? "Recycle Boucle Knit Cardigan Pink";
    price = price ?? "120";
    ratingImage = ratingImage ?? ImageConstant.imgStar1;
    ratingText = ratingText ?? "4.8 Ratings";
    sizeLabel = sizeLabel ?? "Size";
    sizeS = sizeS ?? "S";
    sizeM = sizeM ?? "M";
    sizeL = sizeL ?? "L";
    id = id ?? "";
  }

  String? userImage;

  String? title;

  String? description;

  String? price;

  String? ratingImage;

  String? ratingText;

  String? sizeLabel;

  String? sizeS;

  String? sizeM;

  String? sizeL;

  String? id;
}
