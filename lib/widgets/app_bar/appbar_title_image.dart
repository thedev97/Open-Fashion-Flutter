import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleImage extends StatelessWidget {
  AppbarTitleImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Future.delayed(
            const Duration(milliseconds: 250), () {
          NavigatorService.popAndPushNamed(
            AppRoutes.homePageScreen,
          );
        });
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 70.adaptSize,
          width: 70.adaptSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
