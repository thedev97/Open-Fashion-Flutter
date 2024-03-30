import '../add_new_card_screen/widgets/userprofile2_item_widget.dart';
import 'models/add_new_card_model.dart';
import 'models/userprofile2_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/core/utils/validation_functions.dart';
import 'package:open_fashion/widgets/app_bar/appbar_leading_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_title_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_trailing_image.dart';
import 'package:open_fashion/widgets/app_bar/custom_app_bar.dart';
import 'package:open_fashion/widgets/custom_elevated_button.dart';
import 'package:open_fashion/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/add_new_card_provider.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AddNewCardScreenState createState() => AddNewCardScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddNewCardProvider(),
      child: AddNewCardScreen(),
    );
  }
}

class AddNewCardScreenState extends State<AddNewCardScreen> {
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
                    Consumer<AddNewCardProvider>(
                      builder: (context, provider, child) {
                        return SizedBox(
                          height: 8.v,
                          child: AnimatedSmoothIndicator(
                            activeIndex: provider.sliderIndex,
                            count: provider
                                .addNewCardModelObj.userprofile2ItemList.length,
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
                    SizedBox(height: 23.v),
                    _buildName(context),
                    SizedBox(height: 34.v),
                    _buildCardNumber(context),
                    SizedBox(height: 36.v),
                    _buildInput1(context),
                    SizedBox(height: 34.v),
                    _buildCvv(context),
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
    return Consumer<AddNewCardProvider>(
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
          itemCount: provider.addNewCardModelObj.userprofile2ItemList.length,
          itemBuilder: (context, index, realIndex) {
            Userprofile2ItemModel model =
                provider.addNewCardModelObj.userprofile2ItemList[index];
            return Userprofile2ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 17.h,
      ),
      child: Selector<AddNewCardProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.nameController,
        builder: (context, nameController, child) {
          return CustomTextFormField(
            controller: nameController,
            hintText: "lbl_name_on_card".tr,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 17.h,
      ),
      child: Selector<AddNewCardProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.cardNumberController,
        builder: (context, cardNumberController, child) {
          return CustomTextFormField(
            controller: cardNumberController,
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
  Widget _buildInput(BuildContext context) {
    return Selector<AddNewCardProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.inputController,
      builder: (context, inputController, child) {
        return CustomTextFormField(
          width: 165.h,
          controller: inputController,
          hintText: "lbl_exp_month".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: Selector<AddNewCardProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.dateController,
        builder: (context, dateController, child) {
          return CustomTextFormField(
            width: 164.h,
            controller: dateController,
            hintText: "lbl_exp_date".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildInput1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildInput(context),
          _buildDate(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCvv(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 17.h,
      ),
      child: Selector<AddNewCardProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.cvvController,
        builder: (context, cvvController, child) {
          return CustomTextFormField(
            controller: cvvController,
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
