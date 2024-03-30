import '../models/userprofile4_item_model.dart';
import '../models/userprofile5_item_model.dart';
import '../widgets/userprofile5_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  Userprofile4ItemWidget(
    this.userprofile4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile4ItemModel userprofile4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 190.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            //provider.sliderIndex = index;
          },
        ),
        itemCount: userprofile4ItemModelObj.userprofile5ItemList!.length,
        itemBuilder: (context, index, realIndex) {
          Userprofile5ItemModel model =
              userprofile4ItemModelObj.userprofile5ItemList![index];
          return Userprofile5ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
