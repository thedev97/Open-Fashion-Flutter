import '../models/tag_item_model.dart';
import 'package:flutter/material.dart';
import 'package:simplicity_store/core/app_export.dart';

// ignore: must_be_immutable
class TagItemWidget extends StatelessWidget {
  TagItemWidget(
    this.tagItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  TagItemModel tagItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.only(
          left: 10.h,
          top: 7.v,
          bottom: 7.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          tagItemModelObj.tag!,
          style: TextStyle(
            color: appTheme.blueGray900,
            fontSize: 14.fSize,
            fontFamily: 'Tenor Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        deleteIcon: CustomImageView(
          imagePath: ImageConstant.imgCloseGray700,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 6.h),
        ),
        onDeleted: () {},
        selected: (tagItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.blueGray900.withOpacity(0.2),
        shape: (tagItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray300,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray300,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView1?.call(value);
        },
      ),
    );
  }
}
