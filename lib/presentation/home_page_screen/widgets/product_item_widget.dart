import '../models/product_item_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';

// ignore: must_be_immutable
class ProductItemWidget extends StatelessWidget {
  ProductItemWidget(
    this.productItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductItemModel productItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3.v),
      child: Column(
        children: [
          CustomImageView(
            imagePath: productItemModelObj?.image,
            height: 311.v,
            width: 254.h,
          ),
          SizedBox(height: 5.v),
          SizedBox(
            width: 204.h,
            child: Text(
              productItemModelObj.harrisTweedThree!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeBluegray900.copyWith(
                height: 1.50,
              ),
            ),
          ),
          Text(
            productItemModelObj.oneHundredTwenty!,
            style: CustomTextStyles.bodyLargeRed300_2,
          ),
        ],
      ),
    );
  }
}
