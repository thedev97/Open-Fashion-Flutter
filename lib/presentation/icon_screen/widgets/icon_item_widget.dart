import '../models/icon_item_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';

// ignore: must_be_immutable
class IconItemWidget extends StatelessWidget {
  IconItemWidget(
    this.iconItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IconItemModel iconItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: iconItemModelObj?.doNotBleach,
      height: 24.adaptSize,
      width: 24.adaptSize,
    );
  }
}
