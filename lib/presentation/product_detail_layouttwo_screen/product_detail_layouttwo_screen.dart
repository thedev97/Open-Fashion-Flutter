import '../product_detail_layouttwo_screen/widgets/productdetaillayouttwo_item_widget.dart';
import '../product_detail_layouttwo_screen/widgets/userprofile1_item_widget.dart';
import 'models/product_detail_layouttwo_model.dart';
import 'models/productdetaillayouttwo_item_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_title_image.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_trailing_image.dart';
import 'package:simplicity_store/widgets/app_bar/custom_app_bar.dart';
import 'package:simplicity_store/widgets/custom_icon_button.dart';
import 'provider/product_detail_layouttwo_provider.dart';

class ProductDetailLayouttwoScreen extends StatefulWidget {
  const ProductDetailLayouttwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProductDetailLayouttwoScreenState createState() =>
      ProductDetailLayouttwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductDetailLayouttwoProvider(),
      child: ProductDetailLayouttwoScreen(),
    );
  }
}

class ProductDetailLayouttwoScreenState
    extends State<ProductDetailLayouttwoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 19.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildGroup(context),
                SizedBox(height: 13.v),
                _buildLineEighteen(context),
                SizedBox(height: 67.v),
                _buildMohan(context),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_recycle_boucle_knit".tr,
                    style: CustomTextStyles.bodyLargeGray700_1,
                  ),
                ),
                SizedBox(height: 6.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_120".tr,
                    style: CustomTextStyles.bodyLargeRed300,
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 5.v,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "lbl_ring_size".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Container(
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 11.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12,
                        ),
                        child: Text(
                          "lbl_6".tr,
                          style: CustomTextStyles.bodySmallGray50,
                        ),
                      ),
                      Container(
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12,
                        ),
                        child: Text(
                          "lbl_8".tr,
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ),
                      Container(
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12,
                        ),
                        child: Text(
                          "lbl_9".tr,
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ),
                      Container(
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12,
                        ),
                        child: Text(
                          "lbl_10".tr,
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ),
                      Container(
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 6.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12,
                        ),
                        child: Text(
                          "lbl_11".tr,
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.v),
                _buildButton(context),
                SizedBox(height: 33.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_gallery".tr.toUpperCase(),
                    style: CustomTextStyles.bodyMediumPrimary14_1,
                  ),
                ),
                SizedBox(height: 13.v),
                _buildProductDetailLayoutTwo(context),
                SizedBox(height: 31.v),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_care".tr,
                    style: CustomTextStyles.bodyMediumPrimary14_1,
                  ),
                ),
                SizedBox(height: 20.v),
                _buildTruck(context),
                SizedBox(height: 1.v),
                Container(
                  width: 194.h,
                  margin: EdgeInsets.only(left: 52.h),
                  child: Text(
                    "msg_estimated_to_be".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumGray70014_1.copyWith(
                      height: 1.29,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                Opacity(
                  opacity: 0.2,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Divider(
                      color: appTheme.gray700.withOpacity(0.42),
                      indent: 52.h,
                      endIndent: 16.h,
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
                _buildFrameFiftyFour(context),
                SizedBox(height: 7.v),
                Opacity(
                  opacity: 0.2,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Divider(
                      color: appTheme.gray700.withOpacity(0.42),
                      indent: 52.h,
                      endIndent: 16.h,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                _buildFrameFiftyFive(context),
                SizedBox(height: 44.v),
                Padding(
                  padding: EdgeInsets.only(left: 52.h),
                  child: Text(
                    "msg_you_may_also_like".tr.toUpperCase(),
                    style: CustomTextStyles.bodyLarge18_1,
                  ),
                ),
                SizedBox(height: 9.v),
                CustomImageView(
                  imagePath: ImageConstant.img3,
                  height: 9.v,
                  width: 124.h,
                  margin: EdgeInsets.only(left: 118.h),
                ),
                SizedBox(height: 30.v),
                _buildUserProfile(context),
                SizedBox(height: 50.v),
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
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildGroup(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 343.adaptSize,
        width: 343.adaptSize,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage15343x343,
              height: 343.adaptSize,
              width: 343.adaptSize,
              alignment: Alignment.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 14.h,
                bottom: 13.v,
              ),
              child: CustomIconButton(
                height: 36.adaptSize,
                width: 36.adaptSize,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.fillPrimaryTL18,
                alignment: Alignment.bottomRight,
                child: CustomImageView(
                  imagePath: ImageConstant.imgMap,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLineEighteen(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80.v,
              width: 77.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage15343x343,
                    height: 77.adaptSize,
                    width: 77.adaptSize,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: SizedBox(
                        width: 77.h,
                        child: Divider(
                          color: appTheme.red300,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle430,
              height: 77.adaptSize,
              width: 77.adaptSize,
              margin: EdgeInsets.only(
                left: 12.h,
                bottom: 3.v,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle431,
              height: 77.adaptSize,
              width: 77.adaptSize,
              margin: EdgeInsets.only(
                left: 12.h,
                bottom: 3.v,
              ),
            ),
            Container(
              height: 77.adaptSize,
              width: 77.adaptSize,
              margin: EdgeInsets.only(
                left: 12.h,
                bottom: 3.v,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage15343x343,
                    height: 77.adaptSize,
                    width: 77.adaptSize,
                    alignment: Alignment.center,
                  ),
                  CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.fillSecondaryContainer,
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: ImageConstant.img360View,
                    ),
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
  Widget _buildMohan(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text(
                "lbl_mohan".tr.toUpperCase(),
                style: CustomTextStyles.bodyLarge_1,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgTwitter,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(bottom: 6.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlusGray5001,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 6.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_add_to_basket".tr.toUpperCase(),
              style: CustomTextStyles.bodyMediumGray5001,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFavoriteGray50,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              right: 18.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductDetailLayoutTwo(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Consumer<ProductDetailLayouttwoProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 16.v,
                );
              },
              itemCount: provider.productDetailLayouttwoModelObj
                  .productdetaillayouttwoItemList.length,
              itemBuilder: (context, index) {
                ProductdetaillayouttwoItemModel model = provider
                    .productDetailLayouttwoModelObj
                    .productdetaillayouttwoItemList[index];
                return ProductdetaillayouttwoItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTruck(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: ImageConstant.imgShipping,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 5.v,
                bottom: 2.v,
              ),
              child: Text(
                "msg_free_flat_rate_shipping".tr,
                style: CustomTextStyles.bodyMediumPrimary14_1,
              ),
            ),
            Spacer(),
            Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowUp,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFiftyFour(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 19.h,
          right: 16.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: ImageConstant.imgSort,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 5.v,
                bottom: 3.v,
              ),
              child: Text(
                "lbl_cod_policy".tr,
                style: CustomTextStyles.bodySmallPrimary,
              ),
            ),
            Spacer(),
            Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDownGray90001,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFiftyFive(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 16.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.5,
              child: Container(
                height: 20.adaptSize,
                width: 20.adaptSize,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        child: CircularProgressIndicator(
                          value: 0.5,
                          strokeWidth: 1.h,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBack,
                      height: 6.v,
                      width: 7.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 5.v,
                      width: 6.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 2.v),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 5.v,
                bottom: 3.v,
              ),
              child: Text(
                "lbl_return_policy".tr,
                style: CustomTextStyles.bodySmallPrimary,
              ),
            ),
            Spacer(),
            Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDownGray90001,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Consumer<ProductDetailLayouttwoProvider>(
          builder: (context, provider, child) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 282.v,
                crossAxisCount: 2,
                mainAxisSpacing: 12.h,
                crossAxisSpacing: 12.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: provider
                  .productDetailLayouttwoModelObj.userprofile1ItemList.length,
              itemBuilder: (context, index) {
                Userprofile1ItemModel model = provider
                    .productDetailLayouttwoModelObj.userprofile1ItemList[index];
                return Userprofile1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
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
}
