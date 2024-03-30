import '../blog_grid_view_page/widgets/post_item_widget.dart';
import 'models/post_item_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/widgets/custom_elevated_button.dart';
import 'provider/blog_grid_view_provider.dart';

// ignore_for_file: must_be_immutable
class BlogGridViewPage extends StatefulWidget {
  const BlogGridViewPage({Key? key})
      : super(
          key: key,
        );

  @override
  BlogGridViewPageState createState() => BlogGridViewPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BlogGridViewProvider(),
      child: BlogGridViewPage(),
    );
  }
}

class BlogGridViewPageState extends State<BlogGridViewPage>
    with AutomaticKeepAliveClientMixin<BlogGridViewPage> {
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
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Column(
                  children: [
                    _buildPost(context),
                    SizedBox(height: 34.v),
                    _buildFooter(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPost(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Consumer<BlogGridViewProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 28.v,
              );
            },
            itemCount: provider.blogGridViewModelObj.postItemList.length,
            itemBuilder: (context, index) {
              PostItemModel model =
                  provider.blogGridViewModelObj.postItemList[index];
              return PostItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCopyrightButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.v),
      child: CustomElevatedButton(
        height: 45.v,
        text: "msg_copyright_openui".tr,
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: theme.textTheme.bodySmall!,
        alignment: Alignment.bottomCenter,
      ),
    );
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
    return SizedBox(
      width: 375.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 58.h,
                vertical: 23.v,
              ),
              decoration: AppDecoration.fillOnError,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 48.h),
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
                  Container(
                    width: 184.h,
                    margin: EdgeInsets.only(
                      left: 37.h,
                      right: 38.h,
                    ),
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
                  SizedBox(height: 21.v),
                  CustomImageView(
                    imagePath: ImageConstant.img3,
                    height: 9.v,
                    width: 124.h,
                  ),
                  SizedBox(height: 34.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_about".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                          Text(
                            "lbl_contact".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                          Text(
                            "lbl_blog".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 44.v),
                ],
              ),
            ),
          ),
          _buildCopyrightButton(context),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
