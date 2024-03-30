import '../../widgets/custom_elevated_button.dart';
import '../blog_list_view_page/widgets/postlist_item_widget.dart';
import 'models/blog_list_view_model.dart';
import 'models/postlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/widgets/custom_outlined_button.dart';
import 'provider/blog_list_view_provider.dart';

// ignore_for_file: must_be_immutable
class BlogListViewPage extends StatefulWidget {
  const BlogListViewPage({Key? key})
      : super(
          key: key,
        );

  @override
  BlogListViewPageState createState() => BlogListViewPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BlogListViewProvider(),
      child: BlogListViewPage(),
    );
  }
}

class BlogListViewPageState extends State<BlogListViewPage>
    with AutomaticKeepAliveClientMixin<BlogListViewPage> {
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
                SizedBox(height: 28.v),
                Column(
                  children: [
                    _buildPostList(context),
                    SizedBox(height: 43.v),
                    CustomOutlinedButton(
                      width: 211.h,
                      text: "lbl_load_more".tr.toUpperCase(),
                      rightIcon: Container(
                        margin: EdgeInsets.only(left: 16.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPlus,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.outlineGray1,
                    ),
                    SizedBox(height: 33.v),
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
  Widget _buildPostList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 26.h,
      ),
      child: Consumer<BlogListViewProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount: provider.blogListViewModelObj.postlistItemList.length,
            itemBuilder: (context, index) {
              PostlistItemModel model =
                  provider.blogListViewModelObj.postlistItemList[index];
              return PostlistItemWidget(
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
