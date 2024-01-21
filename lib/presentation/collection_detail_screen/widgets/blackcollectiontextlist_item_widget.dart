import '../models/blackcollectiontextlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';

// ignore: must_be_immutable
class BlackcollectiontextlistItemWidget extends StatelessWidget {
  BlackcollectiontextlistItemWidget(
    this.blackcollectiontextlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BlackcollectiontextlistItemModel blackcollectiontextlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 254.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath:
                blackcollectiontextlistItemModelObj?.blackCollectionImage,
            height: 300.v,
            width: 254.h,
          ),
          SizedBox(height: 13.v),
          Text(
            blackcollectiontextlistItemModelObj.blackCollectionText!,
            style: CustomTextStyles.bodySmallGray5001,
          ),
        ],
      ),
    );
  }
}
