import 'models/cart_empty_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'provider/cart_empty_provider.dart';

class CartEmptyScreen extends StatefulWidget {
  const CartEmptyScreen({Key? key}) : super(key: key);

  @override
  CartEmptyScreenState createState() => CartEmptyScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CartEmptyProvider(), child: CartEmptyScreen());
  }
}

class CartEmptyScreenState extends State<CartEmptyScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 375.h,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgCloseBlueGray900,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          onTap: () {
                            onTapImgClose(context);
                          }),
                      SizedBox(height: 16.v),
                      Text("lbl_cart".tr.toUpperCase(),
                          style: CustomTextStyles.bodyMediumBluegray90014_4),
                      Spacer(flex: 47),
                      Align(
                          alignment: Alignment.center,
                          child: Text("msg_you_have_no_items".tr,
                              style: CustomTextStyles.bodyLargeBluegray400)),
                      Spacer(flex: 52)
                    ])),
            bottomNavigationBar: _buildButton(context)));
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 70.h, right: 70.h, bottom: 16.v),
        decoration: AppDecoration.fillPrimary,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgBagGray5001,
                  height: 20.adaptSize,
                  width: 20.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text("msg_continue_shopping".tr.toUpperCase(),
                      style: CustomTextStyles.bodyLargeGray5001))
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
