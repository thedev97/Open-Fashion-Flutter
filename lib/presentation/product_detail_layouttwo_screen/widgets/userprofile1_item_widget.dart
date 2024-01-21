import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 220.v,
            width: 165.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: userprofile1ItemModelObj?.userImage,
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
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              userprofile1ItemModelObj.userName!,
              style: CustomTextStyles.bodySmallPrimary_1,
            ),
          ),
          SizedBox(height: 1.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              userprofile1ItemModelObj.cardiganDescription!,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              userprofile1ItemModelObj.cardiganPrice!,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
