import '../../../core/app_export.dart';

/// This class is used in the [productgrid_item_widget] screen.
class ProductgridItemModel {
  ProductgridItemModel({
    this.image1,
    this.title,
    this.description,
    this.price,
    this.id,
  }) {
    image1 = image1 ?? ImageConstant.imgRectangle34412;
    title = title ?? "21WN ";
    description = description ?? "reversible angora cardigan";
    price = price ?? "120";
    id = id ?? "";
  }

  String? image1;

  String? title;

  String? description;

  String? price;

  String? id;
}
