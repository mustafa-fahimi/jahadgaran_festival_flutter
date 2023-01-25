import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class IntroductionWidget extends StatefulWidget {
  const IntroductionWidget({Key? key}) : super(key: key);

  @override
  State<IntroductionWidget> createState() => _IntroductionWidgetState();
}

class _IntroductionWidgetState extends State<IntroductionWidget> {
  late CustomVideoPlayerWebSettings customVideoPlayerWebSettings;
  late CustomVideoPlayerWebController _customVideoPlayerWebController;
  String videoUrl =
      'https://caspian2.asset.aparat.com/aparat-video/c20de97b2ec6bdabdc28572f55c3325249196218-480p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6IjcyNTE3MWM4ZGRiNDI5ZDVhMDI5ZWZlMDU1NmY2MGMyIiwiZXhwIjoxNjc0NzAwNjc5LCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.p275CLgU5r5RuXmN4hgvQx-5PItIwMbLZBJK9FIpkus';
  bool showVideoBanner = true;

  @override
  void initState() {
    super.initState();
    customVideoPlayerWebSettings = CustomVideoPlayerWebSettings(
      src: videoUrl,
    );
    _customVideoPlayerWebController = CustomVideoPlayerWebController(
      webVideoPlayerSettings: customVideoPlayerWebSettings,
    );
  }

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
            child: SizedBox(
              width: double.infinity,
              height: 500,
              child: showVideoBanner
                  ? Image.asset(
                      PngAssets.introductionBannerAsset,
                      fit: BoxFit.fill,
                    )
                  : CustomVideoPlayerWeb(
                      customVideoPlayerWebController:
                          _customVideoPlayerWebController,
                    ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapBanner() => setState(() {
        showVideoBanner = false;
      });
}
