//import '../bloc/blog_grid_view_bloc.dart';
import '../models/fashion1_item_model.dart';
import '../models/post_item_model.dart';
import 'fashion1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';

// ignore: must_be_immutable
class PostItemWidget extends StatelessWidget {
  PostItemWidget(
    this.postItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PostItemModel postItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200.v,
          width: 343.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: postItemModelObj?.image,
                height: 200.v,
                width: 343.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBookmark,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 8.h),
                    ),
                    SizedBox(height: 84.v),
                    Container(
                      width: 343.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 11.v,
                      ),
                      decoration: AppDecoration.gradientGrayToGray,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 23.v),
                          Container(
                            width: 291.h,
                            margin: EdgeInsets.only(right: 24.h),
                            child: Text(
                              postItemModelObj.styleGuide!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumGray500114
                                  .copyWith(
                                height: 1.43,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 7.v),
        /*Wrap(
          runSpacing: 10.v,
          spacing: 10.h,
          children: List<Widget>.generate(
            provider.postItemModelObj.fashion1ItemList.length,
            (index) {
              Fashion1ItemModel model =
                  provider.postItemModelObj.fashion1ItemList[index];

              return Fashion1ItemWidget(
                model,
                onSelectedChipView1: (value) {
                  provider.onSelectedChipView1(index, value);
                },
              );
            },
          ),
        ),*/
      ],
    );
  }
}
