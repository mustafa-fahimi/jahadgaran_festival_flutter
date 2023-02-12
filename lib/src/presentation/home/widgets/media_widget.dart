import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';

class MediaWidget extends StatelessWidget {
  const MediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWithTitleCustomWidget(
      title: context.l10n.media,
      content: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  Text(
                    context.l10n.video1,
                    style: subtitle1Bold,
                  ),
                  const SizedBox(height: 10),
                  Image.asset(PngAssets.introductionBannerAsset),
                ],
              ),
            ),
            const SizedBox(width: 40),
            Expanded(
              child: Column(
                children: [
                  Text(
                    context.l10n.video2,
                    style: subtitle1Bold,
                  ),
                  const SizedBox(height: 10),
                  Image.asset(PngAssets.introductionBannerAsset),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
