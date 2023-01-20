import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: _onTapBanner,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              PngAssets.introductionBannerAsset,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onTapBanner() async {
    final url = Uri.parse(
      'https://muhajer.biz/Areas/Panel/Hamayesh/1/Files/55d0c74e-72f4-4781-94c4-9f28eebcea06.mp4',
    );
    await launchUrl(url);
  }
}
