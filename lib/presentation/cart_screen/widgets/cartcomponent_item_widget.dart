import '../models/cartcomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CartcomponentItemWidget extends StatelessWidget {
  CartcomponentItemWidget(
    this.cartcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CartcomponentItemModel cartcomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: cartcomponentItemModelObj?.userImage,
          height: 133.v,
          width: 100.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 13.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cartcomponentItemModelObj.titleText!,
                style: CustomTextStyles.bodyMediumPrimary,
              ),
              SizedBox(height: 10.v),
              Text(
                cartcomponentItemModelObj.descriptionText!,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 12.v),
              Row(
                children: [
                  CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    decoration: IconButtonStyleHelper.outlineGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlusGray70024x24,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      cartcomponentItemModelObj.quantityText!,
                      style: CustomTextStyles.bodyMediumPrimary14,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      decoration: IconButtonStyleHelper.outlineGray,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPlusGray700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14.v),
              Text(
                cartcomponentItemModelObj.priceText!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
