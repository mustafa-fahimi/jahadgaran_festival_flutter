import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class OutlinedButtonCustomWidget extends StatelessWidget {
  const OutlinedButtonCustomWidget({
    required this.btnText, super.key,
    this.width,
    this.height,
    this.iconWidget,
    this.buttonColor,
    this.backgroundColor,
    this.onTap,
  });
  final String btnText;
  final double? width;
  final double? height;
  final Widget? iconWidget;
  final Color? buttonColor;
  final Color? backgroundColor;
  final dynamic Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final Widget textWidget = Text(
      btnText,
      style: subtitle2Bold.copyWith(color: buttonColor),
    );

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width ?? double.infinity,
          height: height ?? 75,
          padding: const EdgeInsets.all(4),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kDefaultBorderRadius),
            color: backgroundColor ?? Colors.white,
            border: Border.all(
              color: buttonColor ?? context.theme.colorScheme.primary,
              width: 2,
            ),
          ),
          child: FittedBox(
            child: iconWidget != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      iconWidget!,
                      const SizedBox(width: 6),
                      textWidget,
                    ],
                  )
                : textWidget,
          ),
        ),
      ),
    );
  }
}
