import '../models/productdetaillayouttwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';

// ignore: must_be_immutable
class ProductdetaillayouttwoItemWidget extends StatelessWidget {
  ProductdetaillayouttwoItemWidget(
    this.productdetaillayouttwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductdetaillayouttwoItemModel productdetaillayouttwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: productdetaillayouttwoItemModelObj?.image,
        height: 167.v,
        width: 343.h,
      ),
    );
  }
}
