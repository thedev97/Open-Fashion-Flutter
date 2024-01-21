import 'models/menu_expand_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';
import 'provider/menu_expand_provider.dart';

// ignore_for_file: must_be_immutable
class MenuExpandPage extends StatefulWidget {
  const MenuExpandPage({Key? key})
      : super(
          key: key,
        );

  @override
  MenuExpandPageState createState() => MenuExpandPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MenuExpandProvider(),
      child: MenuExpandPage(),
    );
  }
}

class MenuExpandPageState extends State<MenuExpandPage>
    with AutomaticKeepAliveClientMixin<MenuExpandPage> {
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
              Padding(
                padding: EdgeInsets.only(
                  left: 17.h,
                  right: 15.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 60.h,
                            child: Text(
                              "lbl_new_apparel".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeBluegray900
                                  .copyWith(
                                height: 3.03,
                              ),
                            ),
                          ),
                          SizedBox(height: 23.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: 96.h,
                              child: Text(
                                "msg_outer_dress_b".tr,
                                maxLines: 10,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyLargeBluegray900
                                    .copyWith(
                                  height: 2.84,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 409.v),
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
                              imagePath: ImageConstant.imgArrowUpGray90001,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: SizedBox(
                        height: 482.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: appTheme.gray300,
                          indent: 4.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 482.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: appTheme.red300,
                        indent: 4.h,
                        endIndent: 117.h,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
