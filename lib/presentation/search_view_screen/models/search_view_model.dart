import 'package:simplicity_store/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'productgrid_item_model.dart';

class SearchViewModel {
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

  List<ProductgridItemModel> productgridItemList = [
    ProductgridItemModel(
        image1: ImageConstant.imgRectangle34412,
        title: "21WN ",
        description: "reversible angora cardigan",
        price: "120"),
    ProductgridItemModel(
        image1: ImageConstant.imgRectangle34414,
        title: "21WN ",
        description: "reversible angora cardigan",
        price: "120"),
    ProductgridItemModel(
        image1: ImageConstant.imgRectangle34416,
        title: "21WN ",
        description: "reversible angora cardigan",
        price: "120"),
    ProductgridItemModel(
        image1: ImageConstant.imgRectangle34418,
        title: "21WN ",
        description: "reversible angora cardigan",
        price: "120")
  ];
}
