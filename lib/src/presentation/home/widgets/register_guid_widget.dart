import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterGuidWidget extends StatelessWidget {
  const RegisterGuidWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: _onTapRegisterGuid,
          child: Center(
            child: Image.asset(
              PngAssets.registerGuidAsset,
              height: 180,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onTapRegisterGuid() async {
    final url = Uri.parse(
      'https://muhajer.biz/Areas/Panel/Hamayesh/1/Files/fd296d8b-25ce-4869-85da-1c706dcba4f7.pdf',
    );
    await launchUrl(url);
  }
}
