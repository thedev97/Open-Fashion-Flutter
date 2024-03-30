import '../models/userprofile2_item_model.dart';
import '../models/userprofile3_item_model.dart';
import '../widgets/userprofile3_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

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
        itemCount: userprofile2ItemModelObj.userprofile3ItemList!.length,
        itemBuilder: (context, index, realIndex) {
          Userprofile3ItemModel model =
              userprofile2ItemModelObj.userprofile3ItemList![index];
          return Userprofile3ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
