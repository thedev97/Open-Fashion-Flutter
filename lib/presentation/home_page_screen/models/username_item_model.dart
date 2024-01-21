import '../../../core/app_export.dart';

/// This class is used in the [username_item_widget] screen.
class UsernameItemModel {
  UsernameItemModel({
    this.userImage,
    this.userName,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgRectangle332;
    userName = userName ?? "@mia";
    id = id ?? "";
  }

  String? userImage;

  String? userName;

  String? id;
}
