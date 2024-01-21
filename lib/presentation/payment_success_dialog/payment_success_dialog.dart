import 'models/payment_success_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/widgets/custom_elevated_button.dart';
import 'package:simplicity_store/widgets/custom_outlined_button.dart';
import 'provider/payment_success_provider.dart';

class PaymentSuccessDialog extends StatefulWidget {
  const PaymentSuccessDialog({Key? key}) : super(key: key);

  @override
  PaymentSuccessDialogState createState() => PaymentSuccessDialogState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PaymentSuccessProvider(),
        child: PaymentSuccessDialog());
  }
}

class PaymentSuccessDialogState extends State<PaymentSuccessDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 343.h,
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillOnError,
        child: Column(children: [
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 44.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 23.v),
                            child: Text("lbl_payment_success".tr.toUpperCase(),
                                style: CustomTextStyles.bodyLarge18_1)),
                        CustomImageView(
                            imagePath: ImageConstant.imgCloseGray90001,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 20.h, bottom: 21.v),
                            onTap: () {
                              onTapImgClose(context);
                            })
                      ]))),
          SizedBox(height: 37.v),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgUserDeepOrange10001,
                    height: 11.v,
                    width: 9.h,
                    margin: EdgeInsets.only(top: 17.v, bottom: 33.v)),
                Container(
                    height: 62.v,
                    width: 59.h,
                    margin: EdgeInsets.only(left: 2.h),
                    child: Stack(alignment: Alignment.topRight, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 46.adaptSize,
                          width: 46.adaptSize,
                          alignment: Alignment.bottomLeft),
                      CustomImageView(
                          imagePath: ImageConstant.imgUserDeepOrange10001,
                          height: 18.v,
                          width: 16.h,
                          alignment: Alignment.topRight)
                    ]))
              ]),
          SizedBox(height: 42.v),
          Text("msg_your_payment_was".tr,
              style: CustomTextStyles.bodyLargeBluegray90018_1),
          SizedBox(height: 3.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text("lbl_payment_id".tr,
                    style: CustomTextStyles.bodyMediumGray700_1)),
            Padding(
                padding: EdgeInsets.only(left: 7.h, bottom: 2.v),
                child: Text("lbl_15263541".tr,
                    style: CustomTextStyles.bodyMediumBluegray900_1))
          ]),
          SizedBox(height: 19.v),
          CustomImageView(
              imagePath: ImageConstant.img3, height: 9.v, width: 124.h),
          SizedBox(height: 21.v),
          Text("msg_rate_your_purchase".tr,
              style: CustomTextStyles.bodyLargeBluegray90018_1),
          SizedBox(height: 5.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgDisappointed,
                height: 40.adaptSize,
                width: 40.adaptSize),
            CustomImageView(
                imagePath: ImageConstant.imgHappy,
                height: 40.adaptSize,
                width: 40.adaptSize,
                margin: EdgeInsets.only(left: 20.h)),
            CustomImageView(
                imagePath: ImageConstant.imgInLove,
                height: 40.adaptSize,
                width: 40.adaptSize,
                margin: EdgeInsets.only(left: 20.h))
          ]),
          SizedBox(height: 38.v),
          Padding(
              padding: EdgeInsets.only(left: 6.h, right: 14.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomElevatedButton(
                    height: 48.v,
                    width: 132.h,
                    text: "lbl_submit".tr.toUpperCase(),
                    buttonTextStyle: CustomTextStyles.bodyLargeDeeporange50),
                CustomOutlinedButton(
                    width: 166.h,
                    text: "lbl_back_to_home".tr.toUpperCase(),
                    margin: EdgeInsets.only(left: 8.h),
                    buttonStyle: CustomButtonStyles.outlineGray1)
              ])),
          SizedBox(height: 20.v)
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
