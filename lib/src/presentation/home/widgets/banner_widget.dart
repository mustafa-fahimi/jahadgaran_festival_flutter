import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  static List<String> sliderImages = [
    PngAssets.slide1Asset,
    PngAssets.slide2Asset,
    PngAssets.slide3Asset,
    PngAssets.slide4Asset,
    PngAssets.slide5Asset,
    PngAssets.slide6Asset,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500,
      child: FanCarouselImageSlider(
        imagesLink: sliderImages,
        expandImageHeight: context.deviceHeightFactor(1),
        isAssets: true,
        autoPlayInterval: const Duration(milliseconds: 4500),
        userCanDrag: false,
        isClickable: false,
        imageRadius: 20,
        initalPageIndex: 0,
        expandImageWidth: context.deviceWidthFactor(0.15),
        slideViewportFraction: 0.9,
        showIndicator: false,
        sliderHeight: 490,
        imageFitMode: BoxFit.fill,
        indicatorActiveColor: context.theme.colorScheme.primary,
      ),
    );
  }
}
