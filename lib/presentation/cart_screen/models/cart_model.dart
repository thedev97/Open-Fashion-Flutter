import '../../../core/app_export.dart';
import 'cartcomponent_item_model.dart';

class CartModel {
  List<CartcomponentItemModel> cartcomponentItemList = [
    CartcomponentItemModel(
        userImage: ImageConstant.imgRectangle344,
        titleText: "lamerei",
        descriptionText: "Recycle Boucle Knit Cardigan Pink",
        quantityText: "1",
        priceText: "120"),
    CartcomponentItemModel(
        userImage: ImageConstant.imgRectangle3442,
        titleText: "5252 by o!oi",
        descriptionText: "2021 Signature Sweatshirt [NAVY]",
        quantityText: "1",
        priceText: "120")
  ];
}
