import 'package:simplicity_store/data/models/selectionPopupModel/selection_popup_model.dart';
import 'tag_item_model.dart';
import '../../../core/app_export.dart';

class CategoryGridViewFullModel {
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

  List<TagItemModel> tagItemList = List.generate(2, (index) => TagItemModel());
}
