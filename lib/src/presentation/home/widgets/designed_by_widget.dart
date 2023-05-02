import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DesignedByWidget extends StatelessWidget {
  const DesignedByWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: '${context.l10n.designed_by_description}  ',
            style: heading5Bold.copyWith(color: Colors.white70),
            children: [
              if (ResponsiveWrapper.of(context).isSmallerThan(DESKTOP))
                const TextSpan(text: '\n'),
              TextSpan(
                text: '${context.l10n.shahid} ',
                style: heading5Bold.copyWith(color: kErrorColor),
              ),
              TextSpan(
                text: context.l10n.ebrahim_hadi_quchan,
                style: heading5Bold.copyWith(color: kSuccessColor),
              ),
            ],
          ),
        ),
        const SizedBox(width: 15),
        Image.asset(
          PngAssets.shahidHadiLogoAsset,
          height: 50,
          width: 50,
          fit: BoxFit.fitHeight,
        ),
      ],
    );
  }
}
