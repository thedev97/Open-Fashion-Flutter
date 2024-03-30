import 'models/checkout_two_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/widgets/app_bar/appbar_leading_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_title_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_trailing_image.dart';
import 'package:open_fashion/widgets/app_bar/custom_app_bar.dart';
import 'package:open_fashion/widgets/custom_icon_button.dart';
import 'provider/checkout_two_provider.dart';

class CheckoutTwoScreen extends StatefulWidget {
  const CheckoutTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CheckoutTwoScreenState createState() => CheckoutTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CheckoutTwoProvider(),
      child: CheckoutTwoScreen(),
    );
  }
}

class CheckoutTwoScreenState extends State<CheckoutTwoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 375.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 42.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl_checkout".tr.toUpperCase(),
                style: CustomTextStyles.bodyLarge18_1,
              ),
              SizedBox(height: 1.v),
              CustomImageView(
                imagePath: ImageConstant.img3,
                height: 9.v,
                width: 124.h,
              ),
              SizedBox(height: 22.v),
              _buildCassieDonkRow(context),
              SizedBox(height: 23.v),
              Opacity(
                opacity: 0.1,
                child: Divider(),
              ),
              SizedBox(height: 16.v),
              _buildUserRow(context),
              SizedBox(height: 23.v),
              Opacity(
                opacity: 0.1,
                child: Divider(),
              ),
              SizedBox(height: 12.v),
              _buildCartRow(context),
              Spacer(),
              SizedBox(height: 7.v),
              _buildTotalRow(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildButtonColumn(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 22.v,
          bottom: 13.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgSettings,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.only(
            left: 23.h,
            top: 24.v,
            right: 12.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBag,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 24.v,
            right: 35.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCassieDonkRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 18.h,
        right: 13.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_iris_watson".tr,
                style: CustomTextStyles.bodyLargePrimaryContainer,
              ),
              SizedBox(height: 6.v),
              SizedBox(
                width: 196.h,
                child: Text(
                  "msg_606_3727_ullamcorper".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumGray70014_1.copyWith(
                    height: 1.57,
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                "lbl_786_713_8616".tr,
                style: CustomTextStyles.bodyMediumGray70014_1,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightBlueGray900,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 40.v,
              bottom: 33.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 17.h,
        right: 13.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 32.v,
            width: 52.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 8.v,
              bottom: 6.v,
            ),
            child: Text(
              "msg_master_card_ending".tr,
              style: CustomTextStyles.bodyMediumGray90003,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightBlueGray900,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCartRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 31.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle344,
              height: 133.v,
              width: 100.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 8.v,
                bottom: 13.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_lamerei".tr.toUpperCase(),
                    style: CustomTextStyles.bodyMediumPrimary,
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "msg_recycle_boucle_knit".tr,
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
                          "lbl_1".tr,
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
                    "lbl_120".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            "lbl_total".tr.toUpperCase(),
            style: CustomTextStyles.bodyMediumBluegray90014_4,
          ),
        ),
        Text(
          "lbl_240".tr.toUpperCase(),
          style: CustomTextStyles.bodyLargeRed300_1,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildButtonColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 117.h,
        right: 117.h,
        bottom: 16.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Container(
        decoration: AppDecoration.fillPrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBagGray5001,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
            Text(
              "lbl_checkout".tr.toUpperCase(),
              style: CustomTextStyles.bodyLargeGray5001,
            ),
          ],
        ),
      ),
    );
  }
}
