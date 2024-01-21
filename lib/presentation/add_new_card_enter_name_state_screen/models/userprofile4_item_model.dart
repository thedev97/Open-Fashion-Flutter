import 'userprofile5_item_model.dart';
import '../../../core/app_export.dart';

/// This class is used in the [userprofile4_item_widget] screen.
class Userprofile4ItemModel {
  Userprofile4ItemModel({
    this.userprofile5ItemList,
    this.id,
  }) {
    userprofile5ItemList = userprofile5ItemList ??
        List.generate(3, (index) => Userprofile5ItemModel());
    id = id ?? "";
  }

  List<Userprofile5ItemModel>? userprofile5ItemList;

  String? id;
}
