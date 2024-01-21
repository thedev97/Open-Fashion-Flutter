import '../models/productcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: productcardItemModelObj?.image,
          height: 200.v,
          width: 165.h,
        ),
        SizedBox(height: 4.v),
        SizedBox(
          width: 136.h,
          child: Text(
            productcardItemModelObj.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodySmallBluegray900.copyWith(
              height: 1.33,
            ),
          ),
        ),
        Text(
          productcardItemModelObj.price!,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
