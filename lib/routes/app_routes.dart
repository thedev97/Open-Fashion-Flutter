import 'package:flutter/material.dart';
import 'package:open_fashion/presentation/home_page_screen/home_page_screen.dart';
import 'package:open_fashion/presentation/blog_list_view_tab_container_screen/blog_list_view_tab_container_screen.dart';
import 'package:open_fashion/presentation/category_grid_view_screen/category_grid_view_screen.dart';
import 'package:open_fashion/presentation/category_listview_screen/category_listview_screen.dart';
import 'package:open_fashion/presentation/product_detail_screen/product_detail_screen.dart';
import 'package:open_fashion/presentation/product_detail_layouttwo_screen/product_detail_layouttwo_screen.dart';
import 'package:open_fashion/presentation/category_grid_view_full_screen/category_grid_view_full_screen.dart';
import 'package:open_fashion/presentation/full_screen/full_screen.dart';
import 'package:open_fashion/presentation/checkout_one_screen/checkout_one_screen.dart';
import 'package:open_fashion/presentation/checkout_screen/checkout_screen.dart';
import 'package:open_fashion/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:open_fashion/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:open_fashion/presentation/add_new_card_enter_name_state_screen/add_new_card_enter_name_state_screen.dart';
import 'package:open_fashion/presentation/checkout_two_screen/checkout_two_screen.dart';
import 'package:open_fashion/presentation/menu_expand_tab_container_screen/menu_expand_tab_container_screen.dart';
import 'package:open_fashion/presentation/collection_screen/collection_screen.dart';
import 'package:open_fashion/presentation/collection_detail_screen/collection_detail_screen.dart';
import 'package:open_fashion/presentation/search_recent_screen/search_recent_screen.dart';
import 'package:open_fashion/presentation/search_view_screen/search_view_screen.dart';
import 'package:open_fashion/presentation/our_story_screen/our_story_screen.dart';
import 'package:open_fashion/presentation/contact_us_screen/contact_us_screen.dart';
import 'package:open_fashion/presentation/fourhundredfour_screen/fourhundredfour_screen.dart';
import 'package:open_fashion/presentation/cart_empty_screen/cart_empty_screen.dart';
import 'package:open_fashion/presentation/search_screen/search_screen.dart';
import 'package:open_fashion/presentation/blog_post_screen/blog_post_screen.dart';
import 'package:open_fashion/presentation/cart_screen/cart_screen.dart';
import 'package:open_fashion/presentation/icon_screen/icon_screen.dart';
import 'package:open_fashion/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePageScreen = '/home_page_screen';

  static const String blogGridViewPage = '/blog_grid_view_page';

  static const String blogListViewPage = '/blog_list_view_page';

  static const String blogListViewTabContainerScreen =
      '/blog_list_view_tab_container_screen';

  static const String menuPage = '/menu_page';

  static const String categoryGridViewScreen = '/category_grid_view_screen';

  static const String categoryListviewScreen = '/category_listview_screen';

  static const String productDetailScreen = '/product_detail_screen';

  static const String productDetailLayouttwoScreen =
      '/product_detail_layouttwo_screen';

  static const String categoryGridViewFullScreen =
      '/category_grid_view_full_screen';

  static const String fullScreen = '/full_screen';

  static const String checkoutOneScreen = '/checkout_one_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String addNewCardEnterNameStateScreen =
      '/add_new_card_enter_name_state_screen';

  static const String checkoutTwoScreen = '/checkout_two_screen';

  static const String menuExpandPage = '/menu_expand_page';

  static const String menuExpandTabContainerScreen =
      '/menu_expand_tab_container_screen';

  static const String collectionScreen = '/collection_screen';

  static const String collectionDetailScreen = '/collection_detail_screen';

  static const String searchRecentScreen = '/search_recent_screen';

  static const String searchViewScreen = '/search_view_screen';

  static const String ourStoryScreen = '/our_story_screen';

  static const String contactUsScreen = '/contact_us_screen';

  static const String fourhundredfourScreen = '/fourhundredfour_screen';

  static const String cartEmptyScreen = '/cart_empty_screen';

  static const String searchScreen = '/search_screen';

  static const String blogPostScreen = '/blog_post_screen';

  static const String cartScreen = '/cart_screen';

  static const String iconScreen = '/icon_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homePageScreen: HomePageScreen.builder,
        blogListViewTabContainerScreen: BlogListViewTabContainerScreen.builder,
        categoryGridViewScreen: CategoryGridViewScreen.builder,
        categoryListviewScreen: CategoryListviewScreen.builder,
        productDetailScreen: ProductDetailScreen.builder,
        productDetailLayouttwoScreen: ProductDetailLayouttwoScreen.builder,
        categoryGridViewFullScreen: CategoryGridViewFullScreen.builder,
        fullScreen: FullScreen.builder,
        checkoutOneScreen: CheckoutOneScreen.builder,
        checkoutScreen: CheckoutScreen.builder,
        addNewAddressScreen: AddNewAddressScreen.builder,
        addNewCardScreen: AddNewCardScreen.builder,
        addNewCardEnterNameStateScreen: AddNewCardEnterNameStateScreen.builder,
        checkoutTwoScreen: CheckoutTwoScreen.builder,
        menuExpandTabContainerScreen: MenuExpandTabContainerScreen.builder,
        collectionScreen: CollectionScreen.builder,
        collectionDetailScreen: CollectionDetailScreen.builder,
        searchRecentScreen: SearchRecentScreen.builder,
        searchViewScreen: SearchViewScreen.builder,
        ourStoryScreen: OurStoryScreen.builder,
        contactUsScreen: ContactUsScreen.builder,
        fourhundredfourScreen: FourhundredfourScreen.builder,
        cartEmptyScreen: CartEmptyScreen.builder,
        searchScreen: SearchScreen.builder,
        blogPostScreen: BlogPostScreen.builder,
        cartScreen: CartScreen.builder,
        iconScreen: IconScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomePageScreen.builder
      };
}
