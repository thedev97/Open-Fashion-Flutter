import '../models/chipviewclose_item_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewcloseItemWidget extends StatelessWidget {
  ChipviewcloseItemWidget(
    this.chipviewcloseItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  ChipviewcloseItemModel chipviewcloseItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        left: 12.h,
        top: 10.v,
        bottom: 10.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewcloseItemModelObj.close!,
        style: TextStyle(
          color: appTheme.gray700,
          fontSize: 13.fSize,
          fontFamily: 'Tenor Sans',
          fontWeight: FontWeight.w400,
        ),
      ),
      deleteIcon: CustomImageView(
        imagePath: ImageConstant.imgCloseGray90001,
        height: 16.adaptSize,
        width: 16.adaptSize,
        margin: EdgeInsets.only(left: 3.h),
      ),
      onDeleted: () {},
      selected: (chipviewcloseItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray400.withOpacity(0.1),
      selectedColor: appTheme.gray400.withOpacity(0.1),
      shape: (chipviewcloseItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray700.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
