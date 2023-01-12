import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class ElevatedButtonCustomWidget extends StatelessWidget {
  const ElevatedButtonCustomWidget({
    super.key,
    required this.btnText,
    this.onTap,
    this.isLoading = false,
    this.width,
    this.height,
    this.iconWidget,
  });

  final String btnText;
  final dynamic Function()? onTap;
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
          padding: const EdgeInsets.all(6),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          ),
          child: FittedBox(
            child: isLoading
                ? const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (iconWidget != null) iconWidget!,
                      if (iconWidget != null && btnText.isNotEmpty)
                        const SizedBox(width: 4),
                      Text(
                        btnText,
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
