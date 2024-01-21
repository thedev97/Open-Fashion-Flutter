import 'slider_item_model.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

class ProductDetailModel {
  List<SliderItemModel> sliderItemList =
      List.generate(1, (index) => SliderItemModel());

  List<UserprofileItemModel> userprofileItemList = [
    UserprofileItemModel(
        userImage: ImageConstant.imgRectangle3441,
        userName: "21WN ",
        cardiganDescription: "reversible angora cardigan",
        cardiganPrice: "120"),
    UserprofileItemModel(
        userImage: ImageConstant.imgRectangle3441,
        userName: "21WN ",
        cardiganDescription: "reversible angora cardigan",
        cardiganPrice: "120")
  ];
}
