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
              height: 400,
              width: double.infinity,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onTapBanner() async {
    final url = Uri.parse(
      'https://www.aparat.com/v/ULIEg/%D8%AA%DB%8C%D8%B2%D8%B1_%DA%86%D9%87%D8%A7%D8%B1%D9%85%DB%8C%D9%86_%D8%AC%D8%B4%D9%86%D9%88%D8%A7%D8%B1%D9%87_%D9%85%D9%84%DB%8C_%D8%AC%D9%87%D8%A7%D8%AF%DA%AF%D8%B1%D8%A7%D9%86',
    );
    await launchUrl(url);
  }
}
