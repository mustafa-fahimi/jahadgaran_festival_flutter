import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_button_custom_widget.dart';

class BottomSheetDecorator extends StatelessWidget {
  const BottomSheetDecorator({
    required this.child, super.key,
    this.hasSecondaryButton = false,
    this.secondaryBtnText,
    this.onTapConfirm,
    this.onTapSecondaryButton,
  });

  final Widget child;
  final bool hasSecondaryButton;
  final String? secondaryBtnText;
  final dynamic Function()? onTapConfirm;
  final dynamic Function()? onTapSecondaryButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),

            /// Close button
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => context.router.pop(),
                child: const Icon(
                  Icons.close_rounded,
                  color: Colors.black45,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey.shade200,
            ),
            const SizedBox(height: 10),
            child,
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (hasSecondaryButton) ...[
                  /// Secondary button
                  OutlinedButtonCustomWidget(
                    btnText: secondaryBtnText ?? 'cancel',
                    width: context.deviceWidthFactor(0.3),
                    height: 45,
                    onTap: onTapSecondaryButton,
                  ),
                  const SizedBox(width: 10),
                ],

                /// Confirm button
                ElevatedButtonCustomWidget(
                  btnText: 'confirm',
                  width: context.deviceWidthFactor(0.3),
                  height: 45,
                  onTap: () {
                    if (onTapConfirm != null) onTapConfirm?.call();
                  },
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
