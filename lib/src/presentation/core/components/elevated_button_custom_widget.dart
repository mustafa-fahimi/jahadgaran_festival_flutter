import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class ElevatedButtonCustomWidget extends StatelessWidget {
  const ElevatedButtonCustomWidget({
    required this.btnText, super.key,
    this.onTap,
    this.isLoading = false,
    this.color,
    this.width,
    this.height,
    this.iconWidget,
  });

  final String btnText;
  final dynamic Function()? onTap;
  final Color? color;
  final bool isLoading;
  final double? width;
  final double? height;
  final Widget? iconWidget;

  @override
  Widget build(BuildContext context) {
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
            color: color,
          ),
          child: FittedBox(
            child: isLoading
                ? const Padding(
                  padding: EdgeInsets.all(8),
                  child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (iconWidget != null) iconWidget!,
                      if (iconWidget != null && btnText.isNotEmpty)
                        const SizedBox(width: 4),
                      Text(
                        btnText,
                        style: subtitle2Bold.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
