import 'models/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'provider/menu_provider.dart';

// ignore_for_file: must_be_immutable
class MenuPage extends StatefulWidget {
  const MenuPage({Key? key})
      : super(
          key: key,
        );

  @override
  MenuPageState createState() => MenuPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MenuProvider(),
      child: MenuPage(),
    );
  }
}

class MenuPageState extends State<MenuPage>
    with AutomaticKeepAliveClientMixin<MenuPage> {
  @override
  bool get wantKeepAlive => true;
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
          decoration: AppDecoration.fillOnError,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    right: 41.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildNewApparelBagRow(context),
                      SizedBox(height: 42.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCall,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 4.v,
                            ),
                            child: Text(
                              "lbl_786_713_8616".tr,
                              style: CustomTextStyles.bodyLargeGray700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 26.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLinkedin,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 2.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_store_locator".tr,
                              style: CustomTextStyles.bodyLargeGray700_1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 33.v),
                      CustomImageView(
                        imagePath: ImageConstant.img3,
                        height: 9.v,
                        width: 124.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 84.h),
                      ),
                      SizedBox(height: 24.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 98.h,
                            right: 75.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgTwitterGray700,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              Spacer(
                                flex: 50,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgInstagramGray700,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              Spacer(
                                flex: 50,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgYoutubeGray700,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewApparelBagRow(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 92.h,
          margin: EdgeInsets.only(
            top: 3.v,
            bottom: 4.v,
          ),
          child: Text(
            "msg_new_apparel_bag".tr,
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyLargeBluegray900.copyWith(
              height: 3.03,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 200.h),
          child: Column(
            children: [
              Opacity(
                opacity: 0.5,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              SizedBox(height: 25.v),
              Opacity(
                opacity: 0.5,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              SizedBox(height: 25.v),
              Opacity(
                opacity: 0.5,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              SizedBox(height: 25.v),
              Opacity(
                opacity: 0.5,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              SizedBox(height: 25.v),
              Opacity(
                opacity: 0.5,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              SizedBox(height: 25.v),
              Opacity(
                opacity: 0.5,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
