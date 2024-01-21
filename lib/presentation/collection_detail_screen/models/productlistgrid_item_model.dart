import '../../../core/app_export.dart';

/// This class is used in the [productlistgrid_item_widget] screen.
class ProductlistgridItemModel {
  ProductlistgridItemModel({
    this.image1,
    this.title1,
    this.title2,
    this.price,
    this.id,
  }) {
    image1 = image1 ?? ImageConstant.imgRectangle3448;
    title1 = title1 ?? "October collection";
    title2 = title2 ?? "reversible angora cardigan";
    price = price ?? "120";
    id = id ?? "";
  }

  String? image1;

  String? title1;

  String? title2;

  String? price;

  String? id;
}
