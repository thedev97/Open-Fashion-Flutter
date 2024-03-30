import '../models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.v,
      width: 316.h,
      margin: EdgeInsets.only(left: 659.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            theme.colorScheme.onPrimary,
            appTheme.blueGray700,
          ],
        ),
      ),
    );
  }
}
