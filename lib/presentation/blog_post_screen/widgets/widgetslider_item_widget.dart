import '../models/widgetslider_item_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';

// ignore: must_be_immutable
class WidgetsliderItemWidget extends StatelessWidget {
  WidgetsliderItemWidget(
    this.widgetsliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WidgetsliderItemModel widgetsliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage14,
      height: 450.v,
      width: 342.h,
    );
  }
}
