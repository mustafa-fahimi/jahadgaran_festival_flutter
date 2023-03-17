import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: SizedBox(
          width: double.infinity,
          height: 600,
          child: Image.asset(
            PngAssets.introductionBannerAsset,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
