import '../category_grid_view_full_screen/widgets/tag_item_widget.dart';
import 'models/category_grid_view_full_model.dart';
import 'models/tag_item_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/widgets/app_bar/appbar_leading_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_title_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_trailing_image.dart';
import 'package:open_fashion/widgets/app_bar/custom_app_bar.dart';
import 'package:open_fashion/widgets/custom_drop_down.dart';
import 'package:open_fashion/widgets/custom_icon_button.dart';
import 'package:open_fashion/widgets/custom_pin_code_text_field.dart';
import 'provider/category_grid_view_full_provider.dart';

class CategoryGridViewFullScreen extends StatefulWidget {
  const CategoryGridViewFullScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CategoryGridViewFullScreenState createState() =>
      CategoryGridViewFullScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoryGridViewFullProvider(),
      child: CategoryGridViewFullScreen(),
    );
  }
}

class CategoryGridViewFullScreenState
    extends State<CategoryGridViewFullScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v),
            child: Column(
              children: [
                _buildThirty(context),
                SizedBox(height: 13.v),
                _buildTag(context),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: _buildComponentTwentyOne(
                    context,
                    imageFifteen: ImageConstant.imgImage15,
                    mOHAN: "lbl_mohan".tr,
                    recycleBoucleKnit: "msg_recycle_boucle_knit".tr,
                    price: "lbl_120".tr,
                  ),
                ),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: _buildComponentTwentyOne(
                    context,
                    imageFifteen: ImageConstant.imgImage15457x343,
                    mOHAN: "lbl_mohan".tr,
                    recycleBoucleKnit: "msg_recycle_boucle_knit".tr,
                    price: "lbl_120".tr,
                  ),
                ),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: _buildComponentTwentyOne(
                    context,
                    imageFifteen: ImageConstant.imgImage151,
                    mOHAN: "lbl_mohan".tr,
                    recycleBoucleKnit: "msg_recycle_boucle_knit".tr,
                    price: "lbl_120".tr,
                  ),
                ),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: _buildComponentTwentyOne(
                    context,
                    imageFifteen: ImageConstant.imgImage152,
                    mOHAN: "lbl_mohan".tr,
                    recycleBoucleKnit: "msg_recycle_boucle_knit".tr,
                    price: "lbl_120".tr,
                  ),
                ),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: _buildComponentTwentyOne(
                    context,
                    imageFifteen: ImageConstant.imgImage153,
                    mOHAN: "lbl_mohan".tr,
                    recycleBoucleKnit: "msg_recycle_boucle_knit".tr,
                    price: "lbl_120".tr,
                  ),
                ),
                SizedBox(height: 83.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 57.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Selector<CategoryGridViewFullProvider,
                            TextEditingController?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.otpController,
                          builder: (context, otpController, child) {
                            return CustomPinCodeTextField(
                              context: context,
                              controller: otpController,
                              onChanged: (value) {
                                otpController?.text = value;
                              },
                            );
                          },
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
                  ),
                ),
                SizedBox(height: 23.v),
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
  Widget _buildThirty(BuildContext context) {
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
          Selector<CategoryGridViewFullProvider, CategoryGridViewFullModel?>(
            selector: (
              context,
              provider,
            ) =>
                provider.categoryGridViewFullModelObj,
            builder: (context, categoryGridViewFullModelObj, child) {
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
                items: categoryGridViewFullModelObj?.dropdownItemList ?? [],
                onChanged: (value) {
                  context
                      .read<CategoryGridViewFullProvider>()
                      .onSelected(value);
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
                imagePath: ImageConstant.imgComputer,
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
                imagePath: ImageConstant.imgTelevision,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTag(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Consumer<CategoryGridViewFullProvider>(
          builder: (context, provider, child) {
            return Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                provider.categoryGridViewFullModelObj.tagItemList.length,
                (index) {
                  TagItemModel model =
                      provider.categoryGridViewFullModelObj.tagItemList[index];

                  return TagItemWidget(
                    model,
                    onSelectedChipView1: (value) {
                      provider.onSelectedChipView1(index, value);
                    },
                  );
                },
              ),
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

  /// Common widget
  Widget _buildComponentTwentyOne(
    BuildContext context, {
    required String imageFifteen,
    required String mOHAN,
    required String recycleBoucleKnit,
    required String price,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 457.v,
          width: 343.h,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: imageFifteen,
                height: 457.v,
                width: 343.h,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFavorite,
                height: 16.adaptSize,
                width: 16.adaptSize,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 15.h,
                  bottom: 13.v,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.v),
        Text(
          mOHAN,
          style: CustomTextStyles.bodyLarge18_1.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        SizedBox(height: 2.v),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text(
                recycleBoucleKnit,
                style: CustomTextStyles.bodyLargeGray700_1.copyWith(
                  color: appTheme.gray700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 36.h),
              child: Text(
                price,
                style: CustomTextStyles.bodyLargeRed300.copyWith(
                  color: appTheme.red300,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
