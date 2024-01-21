import '../models/productlistgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';

// ignore: must_be_immutable
class ProductlistgridItemWidget extends StatelessWidget {
  ProductlistgridItemWidget(
    this.productlistgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductlistgridItemModel productlistgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 220.v,
          width: 165.h,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: productlistgridItemModelObj?.image1,
                height: 220.v,
                width: 165.h,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFavorite,
                height: 16.adaptSize,
                width: 16.adaptSize,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 9.h,
                  bottom: 6.v,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 9.v),
        SizedBox(
          height: 68.v,
          width: 152.h,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 29.h,
                  child: Text(
                    productlistgridItemModelObj.title1!,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallGray5001_1.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(top: 16.v),
                    child: Text(
                      productlistgridItemModelObj.title2!,
                      style: CustomTextStyles.bodySmallGray50_1,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16.v),
                  child: Text(
                    productlistgridItemModelObj.price!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
