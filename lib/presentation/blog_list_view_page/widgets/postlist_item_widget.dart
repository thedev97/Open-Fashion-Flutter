import '../models/postlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';

// ignore: must_be_immutable
class PostlistItemWidget extends StatelessWidget {
  PostlistItemWidget(
    this.postlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PostlistItemModel postlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: postlistItemModelObj?.imageText,
          height: 155.v,
          width: 120.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 11.v,
            bottom: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 121.v,
                width: 201.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Opacity(
                        opacity: 0.8,
                        child: SizedBox(
                          width: 201.h,
                          child: Text(
                            postlistItemModelObj.excitementText!,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBluegray90014_2
                                .copyWith(
                              height: 1.71,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 169.h,
                        child: Text(
                          postlistItemModelObj.styleGuideText!,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumPrimary.copyWith(
                            height: 1.43,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  postlistItemModelObj.timeText!,
                  style: CustomTextStyles.bodySmallBluegray400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
