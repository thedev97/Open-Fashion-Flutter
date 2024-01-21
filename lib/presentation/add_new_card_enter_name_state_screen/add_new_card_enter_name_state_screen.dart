import '../add_new_card_enter_name_state_screen/widgets/userprofile4_item_widget.dart';
import 'models/add_new_card_enter_name_state_model.dart';
import 'models/userprofile4_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/core/utils/validation_functions.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_title_image.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_trailing_image.dart';
import 'package:simplicity_store/widgets/app_bar/custom_app_bar.dart';
import 'package:simplicity_store/widgets/custom_elevated_button.dart';
import 'package:simplicity_store/widgets/custom_floating_text_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/add_new_card_enter_name_state_provider.dart';

class AddNewCardEnterNameStateScreen extends StatefulWidget {
  const AddNewCardEnterNameStateScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AddNewCardEnterNameStateScreenState createState() =>
      AddNewCardEnterNameStateScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddNewCardEnterNameStateProvider(),
      child: AddNewCardEnterNameStateScreen(),
    );
  }
}

class AddNewCardEnterNameStateScreenState
    extends State<AddNewCardEnterNameStateScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: 375.h,
                padding: EdgeInsets.symmetric(vertical: 42.v),
                child: Column(
                  children: [
                    Text(
                      "lbl_payment_method".tr.toUpperCase(),
                      style: CustomTextStyles.bodyLarge18_1,
                    ),
                    SizedBox(height: 1.v),
                    CustomImageView(
                      imagePath: ImageConstant.img3,
                      height: 9.v,
                      width: 124.h,
                    ),
                    SizedBox(height: 12.v),
                    _buildUserProfile(context),
                    SizedBox(height: 13.v),
                    Consumer<AddNewCardEnterNameStateProvider>(
                      builder: (context, provider, child) {
                        return SizedBox(
                          height: 8.v,
                          child: AnimatedSmoothIndicator(
                            activeIndex: provider.sliderIndex,
                            count: provider.addNewCardEnterNameStateModelObj
                                .userprofile4ItemList.length,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor: appTheme.gray5001,
                              dotHeight: 8.v,
                              dotWidth: 8.h,
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 10.v),
                    _buildFloatingTextField(context),
                    SizedBox(height: 7.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "msg_please_enter_your".tr,
                          style: CustomTextStyles.bodySmallOnPrimaryContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.v),
                    _buildFloatingTextField1(context),
                    SizedBox(height: 36.v),
                    _buildText(context),
                    SizedBox(height: 34.v),
                    _buildFloatingTextField4(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildAddCard(context),
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
  Widget _buildUserProfile(BuildContext context) {
    return Consumer<AddNewCardEnterNameStateProvider>(
      builder: (context, provider, child) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 190.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              provider.sliderIndex = index;
            },
          ),
          itemCount: provider
              .addNewCardEnterNameStateModelObj.userprofile4ItemList.length,
          itemBuilder: (context, index, realIndex) {
            Userprofile4ItemModel model = provider
                .addNewCardEnterNameStateModelObj.userprofile4ItemList[index];
            return Userprofile4ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 17.h,
      ),
      child: Selector<AddNewCardEnterNameStateProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.floatingTextFieldController,
        builder: (context, floatingTextFieldController, child) {
          return CustomFloatingTextField(
            controller: floatingTextFieldController,
            labelText: "lbl_name_on_card".tr,
            labelStyle: CustomTextStyles.bodyLargeBluegray900,
            hintText: "lbl_name_on_card".tr,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.only(bottom: 8.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 17.h,
      ),
      child: Selector<AddNewCardEnterNameStateProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.floatingTextFieldController1,
        builder: (context, floatingTextFieldController1, child) {
          return CustomFloatingTextField(
            controller: floatingTextFieldController1,
            labelText: "lbl_card_number".tr,
            labelStyle: CustomTextStyles.bodyMediumGray500,
            hintText: "lbl_card_number".tr,
            textInputType: TextInputType.number,
            validator: (value) {
              if (!isNumeric(value)) {
                return "err_msg_please_enter_valid_number".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField2(BuildContext context) {
    return Selector<AddNewCardEnterNameStateProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.floatingTextFieldController2,
      builder: (context, floatingTextFieldController2, child) {
        return CustomFloatingTextField(
          width: 165.h,
          controller: floatingTextFieldController2,
          labelText: "lbl_exp_month".tr,
          labelStyle: CustomTextStyles.bodyMediumGray500,
          hintText: "lbl_exp_month".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: Selector<AddNewCardEnterNameStateProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.floatingTextFieldController3,
        builder: (context, floatingTextFieldController3, child) {
          return CustomFloatingTextField(
            width: 164.h,
            controller: floatingTextFieldController3,
            labelText: "lbl_exp_date".tr,
            labelStyle: CustomTextStyles.bodyMediumGray500,
            hintText: "lbl_exp_date".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFloatingTextField2(context),
          _buildFloatingTextField3(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 17.h,
      ),
      child: Selector<AddNewCardEnterNameStateProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.floatingTextFieldController4,
        builder: (context, floatingTextFieldController4, child) {
          return CustomFloatingTextField(
            controller: floatingTextFieldController4,
            labelText: "lbl_cvv".tr,
            labelStyle: CustomTextStyles.bodyMediumGray500,
            hintText: "lbl_cvv".tr,
            textInputAction: TextInputAction.done,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddCard(BuildContext context) {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_add_card".tr.toUpperCase(),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 24.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgPlusPrimary20x20,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      buttonTextStyle: CustomTextStyles.bodyLargeGray5001,
    );
  }
}
