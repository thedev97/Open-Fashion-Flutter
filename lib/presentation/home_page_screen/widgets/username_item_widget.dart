import '../models/username_item_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';

// ignore: must_be_immutable
class UsernameItemWidget extends StatelessWidget {
  UsernameItemWidget(
    this.usernameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UsernameItemModel usernameItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164.adaptSize,
      width: 164.adaptSize,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: usernameItemModelObj?.userImage,
            height: 164.adaptSize,
            width: 164.adaptSize,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 164.h,
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.gradientPrimaryToPrimary,
              child: Text(
                usernameItemModelObj.userName!,
                style: CustomTextStyles.bodyMediumOnError,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
