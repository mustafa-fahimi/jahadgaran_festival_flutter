import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

class WebsiteLinkSideWidget extends StatelessWidget {
  const WebsiteLinkSideWidget({
    required this.title, required this.url, Key? key,
  }) : super(key: key);

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async => launchUrl(Uri.parse(url)),
        child: SizedBox(
          width: double.infinity,
          height: 75,
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(PngAssets.menu1Asset),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: subtitle1Bold.copyWith(color: Colors.white70),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
