import '../models/fashion1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';

// ignore: must_be_immutable
class Fashion1ItemWidget extends StatelessWidget {
  Fashion1ItemWidget(
    this.fashion1ItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  Fashion1ItemModel fashion1ItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 6.h,
          vertical: 4.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          fashion1ItemModelObj.fashion!,
          style: TextStyle(
            color: appTheme.blueGray400,
            fontSize: 12.fSize,
            fontFamily: 'Tenor Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (fashion1ItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.blueGray400.withOpacity(0.2),
        shape: (fashion1ItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray100,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray100,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView1?.call(value);
        },
      ),
    );
  }
}
