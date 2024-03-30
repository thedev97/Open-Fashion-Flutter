import '../models/productlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  ProductlistItemWidget(
    this.productlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductlistItemModel productlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: productlistItemModelObj?.userImage,
          height: 133.v,
          width: 100.h,
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productlistItemModelObj.title!,
                style: CustomTextStyles.bodyMediumPrimary,
              ),
              SizedBox(height: 6.v),
              Text(
                productlistItemModelObj.description!,
                style: CustomTextStyles.bodyMediumGray70014_1,
              ),
              SizedBox(height: 2.v),
              Text(
                productlistItemModelObj.price!,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 14.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: productlistItemModelObj?.ratingImage,
                    height: 13.adaptSize,
                    width: 13.adaptSize,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      productlistItemModelObj.ratingText!,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7.v),
              Container(
                width: 216.h,
                margin: EdgeInsets.only(right: 19.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 6.v,
                        bottom: 4.v,
                      ),
                      child: Text(
                        productlistItemModelObj.sizeLabel!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Container(
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 6.h,
                        top: 2.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 5.v,
                      ),
                      decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder12,
                      ),
                      child: Text(
                        productlistItemModelObj.sizeS!,
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ),
                    Container(
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 6.h,
                        top: 2.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 5.v,
                      ),
                      decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder12,
                      ),
                      child: Text(
                        productlistItemModelObj.sizeM!,
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ),
                    Container(
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 6.h,
                        top: 2.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 5.v,
                      ),
                      decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder12,
                      ),
                      child: Text(
                        productlistItemModelObj.sizeL!,
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavorite,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(bottom: 10.v),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
