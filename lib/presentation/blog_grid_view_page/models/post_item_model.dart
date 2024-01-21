import '../../../core/app_export.dart';
import 'fashion1_item_model.dart';

/// This class is used in the [post_item_widget] screen.
class PostItemModel {
  PostItemModel({
    this.image,
    this.styleGuide,
    this.fashion1ItemList,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle434;
    styleGuide = styleGuide ?? "2021 Style Guide: The Biggest \nFall Trends";
    fashion1ItemList =
        fashion1ItemList ?? List.generate(3, (index) => Fashion1ItemModel());
    id = id ?? "";
  }

  String? image;

  String? styleGuide;

  List<Fashion1ItemModel>? fashion1ItemList;

  String? id;
}
