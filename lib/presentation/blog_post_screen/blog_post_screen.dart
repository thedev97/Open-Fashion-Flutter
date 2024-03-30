import '../blog_post_screen/widgets/fashionchipview_item_widget.dart';
import '../blog_post_screen/widgets/widgetslider_item_widget.dart';
import 'models/blog_post_model.dart';
import 'models/fashionchipview_item_model.dart';
import 'models/widgetslider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/widgets/app_bar/appbar_leading_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_title_image.dart';
import 'package:open_fashion/widgets/app_bar/appbar_trailing_image.dart';
import 'package:open_fashion/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/blog_post_provider.dart';

class BlogPostScreen extends StatefulWidget {
  const BlogPostScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BlogPostScreenState createState() => BlogPostScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BlogPostProvider(),
      child: BlogPostScreen(),
    );
  }
}

class BlogPostScreenState extends State<BlogPostScreen> {
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
            padding: EdgeInsets.only(top: 11.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle434221x375,
                  height: 221.v,
                  width: 375.h,
                ),
                SizedBox(height: 17.v),
                Text(
                  "msg_2021_style_guide3".tr.toUpperCase(),
                  style: CustomTextStyles.bodyMediumPrimary14,
                ),
                SizedBox(height: 16.v),
                _buildDescriptionRow(context),
                SizedBox(height: 11.v),
                _buildWidgetSlider(context),
                SizedBox(height: 14.v),
                Consumer<BlogPostProvider>(
                  builder: (context, provider, child) {
                    return SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: provider.sliderIndex,
                        count: provider
                            .blogPostModelObj.widgetsliderItemList.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 5.1,
                          activeDotColor: appTheme.blueGray400,
                          dotHeight: 8.v,
                          dotWidth: 8.h,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 16.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 313.h,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      right: 45.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_i_found_this".tr,
                            style: CustomTextStyles.bodyMediumff333333,
                          ),
                          TextSpan(
                            text: "msg_saint_laurent_canvas".tr,
                            style: CustomTextStyles.bodyMediumffdd8560,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 36.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "msg_posted_by_openfashion".tr,
                            style: CustomTextStyles.bodyMediumGray70014_1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text(
                            "lbl_3_days_ago".tr,
                            style: CustomTextStyles.bodyMediumGray70014_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                _buildFashionChipView(context),
                SizedBox(height: 32.v),
                _buildFooterColumn(context),
              ],
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

  /// Section Widget
  Widget _buildDescriptionRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              width: 314.h,
              child: Text(
                "msg_you_guys_know_how".tr,
                maxLines: 9,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumBluegray90014_3.copyWith(
                  height: 1.71,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBookmark,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              left: 2.h,
              top: 119.v,
              bottom: 80.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWidgetSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Consumer<BlogPostProvider>(
        builder: (context, provider, child) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: 450.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                provider.sliderIndex = index;
              },
            ),
            itemCount: provider.blogPostModelObj.widgetsliderItemList.length,
            itemBuilder: (context, index, realIndex) {
              WidgetsliderItemModel model =
                  provider.blogPostModelObj.widgetsliderItemList[index];
              return WidgetsliderItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFashionChipView(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Consumer<BlogPostProvider>(
          builder: (context, provider, child) {
            return Wrap(
              runSpacing: 14.v,
              spacing: 14.h,
              children: List<Widget>.generate(
                provider.blogPostModelObj.fashionchipviewItemList.length,
                (index) {
                  FashionchipviewItemModel model =
                      provider.blogPostModelObj.fashionchipviewItemList[index];

                  return FashionchipviewItemWidget(
                    model,
                    onSelectedChipView1: (value) {
                      provider.onSelectedChipView1(index, value);
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFooterColumn(BuildContext context) {
    return Column(
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
    );
  }
}
