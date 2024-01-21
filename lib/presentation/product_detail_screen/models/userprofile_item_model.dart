import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.userName,
    this.cardiganDescription,
    this.cardiganPrice,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgRectangle3441;
    userName = userName ?? "21WN ";
    cardiganDescription = cardiganDescription ?? "reversible angora cardigan";
    cardiganPrice = cardiganPrice ?? "120";
    id = id ?? "";
  }

  String? userImage;

  String? userName;

  String? cardiganDescription;

  String? cardiganPrice;

  String? id;
}
