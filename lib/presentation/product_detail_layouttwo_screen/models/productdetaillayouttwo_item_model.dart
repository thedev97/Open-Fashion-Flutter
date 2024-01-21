import '../../../core/app_export.dart';

/// This class is used in the [productdetaillayouttwo_item_widget] screen.
class ProductdetaillayouttwoItemModel {
  ProductdetaillayouttwoItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? ImageConstant.imgImage16;
    id = id ?? "";
  }

  String? image;

  String? id;
}
