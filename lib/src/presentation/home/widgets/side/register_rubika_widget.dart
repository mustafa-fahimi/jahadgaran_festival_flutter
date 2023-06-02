import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterRubikaWidget extends StatelessWidget {
  const RegisterRubikaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWithTitleCustomWidget(
      title: context.l10n.rubika_channel,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            launchUrl(
              Uri.parse(
                'https://rubika.ir/festival_kh',
              ),
              mode: LaunchMode.inAppWebView,
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kDefaultBorderRadius),
              child: Image.asset(
                PngAssets.rubikaChannelAsset,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
