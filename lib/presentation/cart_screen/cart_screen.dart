import '../cart_screen/widgets/cartcomponent_item_widget.dart';
import 'models/cart_model.dart';
import 'models/cartcomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/widgets/app_bar/custom_app_bar.dart';
import 'provider/cart_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CartScreenState createState() => CartScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: CartScreen(),
    );
  }
}

class CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 375.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 6.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_cart".tr.toUpperCase(),
                style: CustomTextStyles.bodyLargeBluegray90018,
              ),
              SizedBox(height: 14.v),
              _buildCartComponent(context),
              SizedBox(height: 80.v),
              Opacity(
                opacity: 0.2,
                child: Divider(
                  color: theme.colorScheme.primary.withOpacity(0.42),
                ),
              ),
              SizedBox(height: 15.v),
              _buildSubTotal(context),
              SizedBox(height: 18.v),
              Container(
                width: 297.h,
                margin: EdgeInsets.only(right: 45.h),
                child: Text(
                  "msg_shipping_charges".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 44.v,
      leadingWidth: 375.h,
      leading: Container(
        height: 12.adaptSize,
        width: 12.adaptSize,
        margin: EdgeInsets.fromLTRB(22.h, 16.v, 341.h, 16.v),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector4,
              height: 12.adaptSize,
              width: 12.adaptSize,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector5,
              height: 12.adaptSize,
              width: 12.adaptSize,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCartComponent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 31.h),
      child: Consumer<CartProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: provider.cartModelObj.cartcomponentItemList.length,
            itemBuilder: (context, index) {
              CartcomponentItemModel model =
                  provider.cartModelObj.cartcomponentItemList[index];
              return CartcomponentItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSubTotal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            "lbl_sub_total".tr.toUpperCase(),
            style: CustomTextStyles.bodyMediumBluegray90014,
          ),
        ),
        Text(
          "lbl_240".tr.toUpperCase(),
          style: CustomTextStyles.bodyLargeRed300_1,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 123.h,
        right: 123.h,
        bottom: 16.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBagGray5001,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Text(
              "lbl_buy_now".tr.toUpperCase(),
              style: CustomTextStyles.bodyLargeGray5001,
            ),
          ),
        ],
      ),
    );
  }
}
