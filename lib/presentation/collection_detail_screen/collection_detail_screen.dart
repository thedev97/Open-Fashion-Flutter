import '../collection_detail_screen/widgets/blackcollectiontextlist_item_widget.dart';
import '../collection_detail_screen/widgets/productlistgrid_item_widget.dart';
import 'models/blackcollectiontextlist_item_model.dart';
import 'models/collection_detail_model.dart';
import 'models/productlistgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_title_image.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_trailing_image.dart';
import 'package:simplicity_store/widgets/app_bar/custom_app_bar.dart';
import 'provider/collection_detail_provider.dart';

class CollectionDetailScreen extends StatefulWidget {
  const CollectionDetailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CollectionDetailScreenState createState() => CollectionDetailScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CollectionDetailProvider(),
      child: CollectionDetailScreen(),
    );
  }
}

class CollectionDetailScreenState extends State<CollectionDetailScreen> {
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
                _buildTenStack(context),
                SizedBox(height: 28.v),
                _buildProductListGrid(context),
                SizedBox(height: 39.v),
                Text(
                  "msg_you_may_also_like".tr.toUpperCase(),
                  style: CustomTextStyles.bodyLargeGray500118,
                ),
                SizedBox(height: 9.v),
                CustomImageView(
                  imagePath: ImageConstant.img12,
                  height: 9.v,
                  width: 124.h,
                ),
                SizedBox(height: 29.v),
                _buildBlackCollectionTextList(context),
                SizedBox(height: 71.v),
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
  Widget _buildTenStack(BuildContext context) {
    return SizedBox(
      height: 555.v,
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
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 456.v,
              width: 359.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage20,
                    height: 456.v,
                    width: 343.h,
                    alignment: Alignment.centerLeft,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: CustomImageView(
                      imagePath: ImageConstant.img11,
                      height: 175.v,
                      width: 221.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 19.v),
                    ),
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
  Widget _buildProductListGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Consumer<CollectionDetailProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 299.v,
              crossAxisCount: 2,
              mainAxisSpacing: 12.h,
              crossAxisSpacing: 12.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: provider
                .collectionDetailModelObj.productlistgridItemList.length,
            itemBuilder: (context, index) {
              ProductlistgridItemModel model = provider
                  .collectionDetailModelObj.productlistgridItemList[index];
              return ProductlistgridItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBlackCollectionTextList(BuildContext context) {
    return SizedBox(
      height: 329.v,
      child: Consumer<CollectionDetailProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 12.h,
              );
            },
            itemCount: provider.collectionDetailModelObj
                .blackcollectiontextlistItemList.length,
            itemBuilder: (context, index) {
              BlackcollectiontextlistItemModel model = provider
                  .collectionDetailModelObj
                  .blackcollectiontextlistItemList[index];
              return BlackcollectiontextlistItemWidget(
                model,
              );
            },
          );
        },
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
