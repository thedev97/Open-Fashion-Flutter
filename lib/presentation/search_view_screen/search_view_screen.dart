import '../search_view_screen/widgets/productgrid_item_widget.dart';
import 'models/productgrid_item_model.dart';
import 'models/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/widgets/app_bar/appbar_leading_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_title_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_trailing_image.dart';
import 'package:open_fashion/widgets/app_bar/custom_app_bar.dart';
import 'package:open_fashion/widgets/custom_drop_down.dart';
import 'package:open_fashion/widgets/custom_icon_button.dart';
import 'package:open_fashion/widgets/custom_pin_code_text_field.dart';
import 'provider/search_view_provider.dart';

class SearchViewScreen extends StatefulWidget {
  const SearchViewScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchViewScreenState createState() => SearchViewScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchViewProvider(),
      child: SearchViewScreen(),
    );
  }
}

class SearchViewScreenState extends State<SearchViewScreen> {
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
            padding: EdgeInsets.only(top: 10.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Column(
                children: [
                  _buildDressRow(context),
                  SizedBox(height: 6.v),
                  Opacity(
                    opacity: 0.5,
                    child: Divider(
                      color: appTheme.blueGray400.withOpacity(0.53),
                      indent: 16.h,
                      endIndent: 16.h,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  _buildProductRow(context),
                  SizedBox(height: 16.v),
                  _buildProductGrid(context),
                  SizedBox(height: 60.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 57.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Selector<SearchViewProvider, TextEditingController?>(
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
                  SizedBox(height: 76.v),
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
  Widget _buildDressRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 6.v,
            ),
            child: Text(
              "lbl_dress".tr,
              style: CustomTextStyles.bodyLargeGray700_1,
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 28.adaptSize,
            width: 28.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillGrayTL14,
            child: CustomImageView(
              imagePath: ImageConstant.imgDelete,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRewind,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 9.h,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductRow(BuildContext context) {
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
              "msg_8_result_of_dress".tr.toUpperCase(),
              style: CustomTextStyles.bodyMediumBluegray90014_3,
            ),
          ),
          Spacer(),
          Selector<SearchViewProvider, SearchViewModel?>(
            selector: (
              context,
              provider,
            ) =>
                provider.searchViewModelObj,
            builder: (context, searchViewModelObj, child) {
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
                items: searchViewModelObj?.dropdownItemList ?? [],
                onChanged: (value) {
                  context.read<SearchViewProvider>().onSelected(value);
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
                imagePath: ImageConstant.imgGrid,
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
  Widget _buildProductGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Consumer<SearchViewProvider>(
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
            itemCount: provider.searchViewModelObj.productgridItemList.length,
            itemBuilder: (context, index) {
              ProductgridItemModel model =
                  provider.searchViewModelObj.productgridItemList[index];
              return ProductgridItemWidget(
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
