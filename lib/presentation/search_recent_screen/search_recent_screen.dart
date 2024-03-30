import '../search_recent_screen/widgets/chipviewclose_item_widget.dart';
import 'models/chipviewclose_item_model.dart';
import 'models/search_recent_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'provider/search_recent_provider.dart';

class SearchRecentScreen extends StatefulWidget {
  const SearchRecentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchRecentScreenState createState() => SearchRecentScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchRecentProvider(),
      child: SearchRecentScreen(),
    );
  }
}

class SearchRecentScreenState extends State<SearchRecentScreen> {
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
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 37.v,
                width: 314.h,
              ),
              SizedBox(height: 18.v),
              Text(
                "lbl_recent_search".tr,
                style: CustomTextStyles.bodyMediumBluegray400,
              ),
              SizedBox(height: 9.v),
              _buildChipViewClose(context),
              SizedBox(height: 32.v),
              Text(
                "msg_popular_search_terms".tr,
                style: CustomTextStyles.bodyMediumBluegray400,
              ),
              SizedBox(height: 18.v),
              SizedBox(
                width: 92.h,
                child: Text(
                  "msg_trend_dress_bag".tr,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 2.28,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipViewClose(BuildContext context) {
    return Consumer<SearchRecentProvider>(
      builder: (context, provider, child) {
        return Wrap(
          runSpacing: 10.93.v,
          spacing: 10.93.h,
          children: List<Widget>.generate(
            provider.searchRecentModelObj.chipviewcloseItemList.length,
            (index) {
              ChipviewcloseItemModel model =
                  provider.searchRecentModelObj.chipviewcloseItemList[index];

              return ChipviewcloseItemWidget(
                model,
                onSelectedChipView1: (value) {
                  provider.onSelectedChipView1(index, value);
                },
              );
            },
          ),
        );
      },
    );
  }
}
