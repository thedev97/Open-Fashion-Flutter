import 'package:simplicity_store/data/models/selectionPopupModel/selection_popup_model.dart';
import 'select_item_model.dart';
import '../../../core/app_export.dart';
import 'productcomponent_item_model.dart';

class CategoryGridViewModel {
  List<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ];

  List<SelectItemModel> selectItemList =
      List.generate(2, (index) => SelectItemModel());

  List<ProductcomponentItemModel> productcomponentItemList = [
    ProductcomponentItemModel(
        image1: ImageConstant.imgRectangle344,
        title: "21WN ",
        description: "reversible angora cardigan",
        price: "120"),
    ProductcomponentItemModel(
        image1: ImageConstant.imgRectangle3441,
        title: "21WN ",
        description: "reversible angora cardigan",
        price: "120"),
    ProductcomponentItemModel(
        image1: ImageConstant.imgRectangle3443,
        title: "21WN ",
        description: "reversible angora cardigan",
        price: "120"),
    ProductcomponentItemModel(
        image1: ImageConstant.imgRectangle3441,
        title: "21WN ",
        description: "reversible angora cardigan",
        price: "120"),
    ProductcomponentItemModel(
        image1: ImageConstant.imgRectangle3443,
        title: "21WN ",
        description: "reversible angora cardigan",
        price: "120")
  ];
}
