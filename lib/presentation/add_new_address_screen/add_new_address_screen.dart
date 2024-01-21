import 'models/add_new_address_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/core/utils/validation_functions.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_title_image.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_trailing_image.dart';
import 'package:simplicity_store/widgets/app_bar/custom_app_bar.dart';
import 'package:simplicity_store/widgets/custom_elevated_button.dart';
import 'package:simplicity_store/widgets/custom_text_form_field.dart';
import 'provider/add_new_address_provider.dart';

class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AddNewAddressScreenState createState() => AddNewAddressScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddNewAddressProvider(),
      child: AddNewAddressScreen(),
    );
  }
}

class AddNewAddressScreenState extends State<AddNewAddressScreen> {
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
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 42.v,
                ),
                child: Column(
                  children: [
                    Text(
                      "msg_add_shipping_adress".tr.toUpperCase(),
                      style: CustomTextStyles.bodyLarge18_1,
                    ),
                    SizedBox(height: 1.v),
                    CustomImageView(
                      imagePath: ImageConstant.img3,
                      height: 9.v,
                      width: 124.h,
                    ),
                    SizedBox(height: 40.v),
                    _buildFirstName(context),
                    SizedBox(height: 35.v),
                    _buildAddressEditText(context),
                    SizedBox(height: 37.v),
                    _buildCityEditText(context),
                    SizedBox(height: 34.v),
                    _buildZipcode(context),
                    SizedBox(height: 35.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_phone_number".tr,
                        style: CustomTextStyles.bodyMediumGray500,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Divider(
                      color: appTheme.blueGray100,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildAddNowButton(context),
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
  Widget _buildFirstNameEditText(BuildContext context) {
    return Selector<AddNewAddressProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.firstNameEditTextController,
      builder: (context, firstNameEditTextController, child) {
        return CustomTextFormField(
          width: 165.h,
          controller: firstNameEditTextController,
          hintText: "lbl_first_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLastNameEditText(BuildContext context) {
    return Selector<AddNewAddressProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.lastNameEditTextController,
      builder: (context, lastNameEditTextController, child) {
        return CustomTextFormField(
          width: 164.h,
          controller: lastNameEditTextController,
          hintText: "lbl_last_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildFirstNameEditText(context),
        _buildLastNameEditText(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddressEditText(BuildContext context) {
    return Selector<AddNewAddressProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.addressEditTextController,
      builder: (context, addressEditTextController, child) {
        return CustomTextFormField(
          controller: addressEditTextController,
          hintText: "lbl_adress".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCityEditText(BuildContext context) {
    return Selector<AddNewAddressProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.cityEditTextController,
      builder: (context, cityEditTextController, child) {
        return CustomTextFormField(
          controller: cityEditTextController,
          hintText: "lbl_city".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildZipcodeEditText(BuildContext context) {
    return Selector<AddNewAddressProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.zipcodeEditTextController,
      builder: (context, zipcodeEditTextController, child) {
        return CustomTextFormField(
          width: 164.h,
          controller: zipcodeEditTextController,
          hintText: "lbl_zip_code".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_state".tr,
              style: CustomTextStyles.bodyMediumGray500,
            ),
            SizedBox(height: 16.v),
            SizedBox(
              width: 165.h,
              child: Divider(
                color: appTheme.blueGray100,
              ),
            ),
          ],
        ),
        _buildZipcodeEditText(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddNowButton(BuildContext context) {
    return CustomElevatedButton(
      height: 56.v,
      text: "lbl_add_now".tr.toUpperCase(),
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
