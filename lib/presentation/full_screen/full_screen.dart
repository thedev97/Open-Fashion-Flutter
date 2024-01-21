import 'models/full_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_leading_image.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_title_image.dart';
import 'package:simplicity_store/widgets/app_bar/appbar_trailing_image.dart';
import 'package:simplicity_store/widgets/app_bar/custom_app_bar.dart';
import 'provider/full_provider.dart';

class FullScreen extends StatefulWidget {
  const FullScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FullScreenState createState() => FullScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FullProvider(),
      child: FullScreen(),
    );
  }
}

class FullScreenState extends State<FullScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 375.h,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 1090.v,
              width: 375.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      decoration: AppDecoration.fillPrimary1,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCloseGray5001,
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 16.h),
                          ),
                          SizedBox(height: 25.v),
                          SizedBox(
                            height: 500.v,
                            width: 375.h,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage15,
                                  height: 500.v,
                                  width: 375.h,
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgCloseGray50,
                                  height: 64.v,
                                  width: 8.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(
                                    right: 16.h,
                                    bottom: 196.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25.v),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 500.v,
                      width: 375.h,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage16500x375,
                            height: 500.v,
                            width: 375.h,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 129.v,
                              width: 375.h,
                              margin: EdgeInsets.only(top: 41.v),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.39, 1.07),
                                  end: Alignment(0.39, -0.01),
                                  colors: [
                                    appTheme.gray600,
                                    appTheme.gray600.withOpacity(0.44),
                                    appTheme.gray600.withOpacity(0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _buildAppBar(context),
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
    );
  }
}
