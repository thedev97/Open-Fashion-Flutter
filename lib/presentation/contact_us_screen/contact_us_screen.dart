import 'models/contact_us_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_title_image.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_trailing_image.dart';
import 'package:simplicity_store/widgets/app_bar/custom_app_bar.dart';
import 'package:simplicity_store/widgets/custom_elevated_button.dart';
import 'provider/contact_us_provider.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ContactUsScreenState createState() => ContactUsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContactUsProvider(),
      child: ContactUsScreen(),
    );
  }
}

class ContactUsScreenState extends State<ContactUsScreen> {
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
            padding: EdgeInsets.only(top: 42.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Column(
                children: [
                  Text(
                    "lbl_contact_us".tr.toUpperCase(),
                    style: CustomTextStyles.bodyLarge18_1,
                  ),
                  SizedBox(height: 1.v),
                  CustomImageView(
                    imagePath: ImageConstant.img3,
                    height: 9.v,
                    width: 124.h,
                  ),
                  SizedBox(height: 50.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgChatMessage,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                  ),
                  SizedBox(height: 15.v),
                  Container(
                    width: 338.h,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      right: 22.h,
                    ),
                    child: Text(
                      "msg_need_an_asap_answer".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeBluegray900.copyWith(
                        height: 1.25,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  CustomElevatedButton(
                    width: 187.h,
                    text: "lbl_chat_with_us".tr.toUpperCase(),
                  ),
                  SizedBox(height: 59.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgAddMessage,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                  ),
                  SizedBox(height: 17.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 333.h,
                      margin: EdgeInsets.only(
                        left: 14.h,
                        right: 27.h,
                      ),
                      child: Text(
                        "msg_you_can_text_us".tr,
                        maxLines: 9,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLargeBluegray900.copyWith(
                          height: 1.44,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  CustomElevatedButton(
                    width: 130.h,
                    text: "lbl_text_us".tr.toUpperCase(),
                  ),
                  SizedBox(height: 60.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgTwitterRed300,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                  ),
                  SizedBox(height: 17.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 334.h,
                      margin: EdgeInsets.only(
                        left: 14.h,
                        right: 25.h,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_to_send_us_a_private2".tr,
                              style: CustomTextStyles.bodyLargeff333333,
                            ),
                            TextSpan(
                              text: "lbl_facebook".tr,
                              style:
                                  CustomTextStyles.bodyLargeff333333.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text: "lbl_or_follow_us_on".tr,
                              style: CustomTextStyles.bodyLargeff333333,
                            ),
                            TextSpan(
                              text: "msg_twitter_we_ll_get".tr,
                              style:
                                  CustomTextStyles.bodyLargeff333333.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(height: 29.v),
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
