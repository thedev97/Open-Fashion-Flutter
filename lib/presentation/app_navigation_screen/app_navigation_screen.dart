import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Blog_List view - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.blogListViewTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Category_Grid view".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.categoryGridViewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Category_Listview".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.categoryListviewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product Detail".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product Detail_LayoutTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productDetailLayouttwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Category_Grid view_Full".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.categoryGridViewFullScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Full screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fullScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Checkout One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Checkout".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Card (Enter Name State)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewCardEnterNameStateScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Checkout Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Menu_Expand - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.menuExpandTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Collection".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.collectionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Collection_Detail".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.collectionDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search_recent".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchRecentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search view".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchViewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Our Story".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ourStoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Contact us".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.contactUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "FourHundredFour".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fourhundredfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cart_Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cartEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Blog post".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.blogPostScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cart".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Icon".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.iconScreen),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
