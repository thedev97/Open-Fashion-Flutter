import 'models/collection_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/widgets/app_bar/appbar_leading_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_title_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_trailing_image.dart';
import 'package:open_fashion/widgets/app_bar/custom_app_bar.dart';
import 'provider/collection_provider.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CollectionScreenState createState() => CollectionScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CollectionProvider(),
      child: CollectionScreen(),
    );
  }
}

class CollectionScreenState extends State<CollectionScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90002,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 26.v),
            child: Column(
              children: [
                _buildFrameFiftySix(context),
                SizedBox(height: 39.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage21,
                  height: 456.v,
                  width: 343.h,
                ),
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: _buildThree(
                    context,
                    dynamicText: "lbl_02".tr,
                    dynamicText1: "msg_black_collection".tr,
                  ),
                ),
                SizedBox(height: 59.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage22,
                  height: 456.v,
                  width: 343.h,
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: _buildThree(
                    context,
                    dynamicText: "lbl_03".tr,
                    dynamicText1: "lbl_hae_by_haekim".tr,
                  ),
                ),
                SizedBox(height: 66.v),
                _buildFooter(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 63.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphoneGray50,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 15.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgSettingsOnerror,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewindGray50,
          margin: EdgeInsets.only(
            left: 23.h,
            top: 16.v,
            right: 15.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBagGray50,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 16.v,
            right: 38.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameFiftySix(BuildContext context) {
    return SizedBox(
      height: 586.v,
      width: 359.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Opacity(
            opacity: 0.5,
            child: CustomImageView(
              imagePath: ImageConstant.img10,
              height: 125.v,
              width: 173.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 74.h),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 15.v),
              child: Text(
                "lbl_october".tr,
                style: theme.textTheme.displayMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 74.v),
              child: Text(
                "lbl_collection".tr.toUpperCase(),
                style: CustomTextStyles.bodySmallGray5001_2,
              ),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: CustomImageView(
              imagePath: ImageConstant.img11,
              height: 175.v,
              width: 221.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 50.v),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage20,
                    height: 456.v,
                    width: 343.h,
                  ),
                  SizedBox(height: 11.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_01".tr.toUpperCase(),
                        style: theme.textTheme.labelLarge,
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 12.v,
                            bottom: 6.v,
                          ),
                          child: SizedBox(
                            width: 109.h,
                            child: Divider(
                              color: theme.colorScheme.onError,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(
                          "msg_october_collection".tr.toUpperCase(),
                          style: CustomTextStyles.bodySmallGray5001,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnError,
      child: Column(
        children: [
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 106.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTwitterBlueGray900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Spacer(
                  flex: 50,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgInstagramBlueGray900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Spacer(
                  flex: 50,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgYoutube,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          CustomImageView(
            imagePath: ImageConstant.img3,
            height: 9.v,
            width: 124.h,
          ),
          SizedBox(height: 22.v),
          SizedBox(
            width: 184.h,
            child: Text(
              "msg_support_openui_design_60".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeBluegray900.copyWith(
                height: 1.84,
              ),
            ),
          ),
          SizedBox(height: 20.v),
          CustomImageView(
            imagePath: ImageConstant.img3,
            height: 9.v,
            width: 124.h,
          ),
          SizedBox(height: 33.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 58.h,
                right: 70.h,
              ),
              child: Row(
                children: [
                  Text(
                    "lbl_about".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  Spacer(
                    flex: 49,
                  ),
                  Text(
                    "lbl_contact".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  Spacer(
                    flex: 50,
                  ),
                  Text(
                    "lbl_blog".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 68.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillGray400,
            child: Text(
              "msg_copyright_openui".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildThree(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          dynamicText,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.gray5001,
          ),
        ),
        Opacity(
          opacity: 0.1,
          child: Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 5.v,
            ),
            child: SizedBox(
              width: 118.h,
              child: Divider(
                color: theme.colorScheme.onError,
                indent: 9.h,
              ),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            dynamicText1,
            style: CustomTextStyles.bodySmallGray5001.copyWith(
              color: appTheme.gray5001,
            ),
          ),
        ),
      ],
    );
  }
}
