import '../models/fashionchipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';

// ignore: must_be_immutable
class FashionchipviewItemWidget extends StatelessWidget {
  FashionchipviewItemWidget(
    this.fashionchipviewItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  FashionchipviewItemModel fashionchipviewItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          fashionchipviewItemModelObj.fashion!,
          style: TextStyle(
            color: appTheme.blueGray400,
            fontSize: 12.fSize,
            fontFamily: 'Tenor Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (fashionchipviewItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.blueGray400.withOpacity(0.2),
        shape: (fashionchipviewItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray100,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray100,
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
