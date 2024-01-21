import '../../../core/app_export.dart';

/// This class is used in the [blackcollectiontextlist_item_widget] screen.
class BlackcollectiontextlistItemModel {
  BlackcollectiontextlistItemModel({
    this.blackCollectionImage,
    this.blackCollectionText,
    this.id,
  }) {
    blackCollectionImage = blackCollectionImage ?? ImageConstant.imgImage21;
    blackCollectionText = blackCollectionText ?? "Black collection";
    id = id ?? "";
  }

  String? blackCollectionImage;

  String? blackCollectionText;

  String? id;
}
