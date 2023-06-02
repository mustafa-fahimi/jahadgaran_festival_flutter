import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadApkSideWidget extends StatelessWidget {
  const DownloadApkSideWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWithTitleCustomWidget(
      title: context.l10n.download_application,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            launchUrl(
              Uri.parse(
                'https://festival-kh.ir/%D8%AC%D8%B4%D9%86%D9%88%D8%A7%D8%B1%D9%87_%D8%AC%D9%87%D8%A7%D8%AF%DA%AF%D8%B1%D8%A7%D9%86_%D8%AE%D8%B1%D8%A7%D8%B3%D8%A7%D9%86_%D8%B1%D8%B6%D9%88%DB%8C.apk',
              ),
              mode: LaunchMode.inAppWebView,
            );
          },
          child: Image.asset(
            PngAssets.downloadApkAsset,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
