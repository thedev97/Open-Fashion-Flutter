import '../../../core/app_export.dart';
import 'productcard_item_model.dart';
import 'product_item_model.dart';
import 'frameeleven_item_model.dart';
import 'username_item_model.dart';

class HomePageModel {
  List<ProductcardItemModel> productcardItemList = [
    ProductcardItemModel(
        image: ImageConstant.imgRectangle325,
        title: "21WN reversible angora cardigan",
        price: "120"),
    ProductcardItemModel(
        image: ImageConstant.imgRectangle325200x165,
        title: "21WN reversible angora cardigan",
        price: "120"),
    ProductcardItemModel(
        image: ImageConstant.imgRectangle3251,
        title: "21WN reversible angora cardigan",
        price: "120"),
    ProductcardItemModel(
        image: ImageConstant.imgRectangle3252,
        title: "Oblong bag",
        price: "120")
  ];

  List<ProductItemModel> productItemList = [
    ProductItemModel(
        image: ImageConstant.imgRectangle321,
        harrisTweedThree: "Harris Tweed Three button Jacket",
        oneHundredTwenty: "120")
  ];

  List<FrameelevenItemModel> frameelevenItemList =
      List.generate(7, (index) => FrameelevenItemModel());

  List<UsernameItemModel> usernameItemList = [
    UsernameItemModel(
        userImage: ImageConstant.imgRectangle332, userName: "@mia"),
    UsernameItemModel(
        userImage: ImageConstant.imgRectangle333, userName: "@_jihyn"),
    UsernameItemModel(
        userImage: ImageConstant.imgRectangle334, userName: "@mia"),
    UsernameItemModel(
        userImage: ImageConstant.imgRectangle335, userName: "@_jihyn")
  ];
}
