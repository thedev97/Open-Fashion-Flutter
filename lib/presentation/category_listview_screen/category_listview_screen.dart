import '../category_listview_screen/widgets/productlist_item_widget.dart';
import 'models/category_listview_model.dart';
import 'models/productlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/widgets/app_bar/appbar_leading_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_title_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_trailing_image.dart';
import 'package:open_fashion/widgets/app_bar/custom_app_bar.dart';
import 'package:open_fashion/widgets/custom_drop_down.dart';
import 'package:open_fashion/widgets/custom_icon_button.dart';
import 'provider/category_listview_provider.dart';

class CategoryListviewScreen extends StatefulWidget {
  const CategoryListviewScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CategoryListviewScreenState createState() => CategoryListviewScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoryListviewProvider(),
      child: CategoryListviewScreen(),
    );
  }
}

class CategoryListviewScreenState extends State<CategoryListviewScreen> {
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
            padding: EdgeInsets.only(top: 13.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Column(
                children: [
                  _buildFilterRow(context),
                  SizedBox(height: 27.v),
                  _buildProductList(context),
                  SizedBox(height: 51.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 32.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 13.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.fillBlueGray,
                        child: Text(
                          "lbl_1".tr,
                          style: CustomTextStyles.bodyLargeGray5001_1,
                        ),
                      ),
                      Container(
                        width: 32.adaptSize,
                        margin: EdgeInsets.only(left: 12.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.fillBluegray400,
                        child: Text(
                          "lbl_22".tr,
                          style: CustomTextStyles.bodyLargeGray700_1,
                        ),
                      ),
                      Container(
                        width: 32.adaptSize,
                        margin: EdgeInsets.only(left: 12.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.fillBluegray400,
                        child: Text(
                          "lbl_3".tr,
                          style: CustomTextStyles.bodyLargeGray700_1,
                        ),
                      ),
                      Container(
                        width: 32.adaptSize,
                        margin: EdgeInsets.only(left: 12.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.fillBluegray400,
                        child: Text(
                          "lbl_4".tr,
                          style: CustomTextStyles.bodyLargeGray700_1,
                        ),
                      ),
                      Container(
                        width: 32.adaptSize,
                        margin: EdgeInsets.only(left: 12.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.fillBluegray400,
                        child: Text(
                          "lbl_5".tr,
                          style: CustomTextStyles.bodyLargeGray700_1,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          left: 9.h,
                          top: 4.v,
                          bottom: 3.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 36.v),
                  _buildFooter(context),
                ],
              ),
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
  Widget _buildFilterRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 8.v,
            ),
            child: Text(
              "lbl_4500_apparel".tr.toUpperCase(),
              style: CustomTextStyles.bodyMediumBluegray90014_3,
            ),
          ),
          Spacer(),
          Selector<CategoryListviewProvider, CategoryListviewModel?>(
            selector: (
              context,
              provider,
            ) =>
                provider.categoryListviewModelObj,
            builder: (context, categoryListviewModelObj, child) {
              return CustomDropDown(
                width: 72.h,
                icon: Container(
                  margin: EdgeInsets.fromLTRB(2.h, 9.v, 9.h, 10.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdownBlueGray900,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ),
                hintText: "lbl_new".tr,
                items: categoryListviewModelObj?.dropdownItemList ?? [],
                onChanged: (value) {
                  context.read<CategoryListviewProvider>().onSelected(value);
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGridGray90001,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(6.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgFilter,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 12.h,
      ),
      child: Consumer<CategoryListviewProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 12.v,
              );
            },
            itemCount:
                provider.categoryListviewModelObj.productlistItemList.length,
            itemBuilder: (context, index) {
              ProductlistItemModel model =
                  provider.categoryListviewModelObj.productlistItemList[index];
              return ProductlistItemWidget(
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
