import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_c_w.dart';

class DialogDecorator extends StatelessWidget {
  const DialogDecorator({
    super.key,
    required this.child,
    this.onTapConfirm,
  });

  final Widget child;
  final dynamic Function()? onTapConfirm;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.only(
        right: 20,
        left: 20,
        top: 20,
      ),
      actionsPadding: const EdgeInsets.all(20),
      content: SizedBox(
        width: context.deviceWidthFactor(0.25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            /// Close button
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => context.router.pop(),
                child: const Icon(
                  Icons.close_rounded,
                  size: 20,
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
          ],
        ),
      ),
      actions: [
        /// Confirm button
        ElevatedButtonCW(
          btnText: 'confirm',
          width: 100,
          height: 40,
          onTap: () {
            if (onTapConfirm != null) onTapConfirm?.call();
          },
        ),
      ],
    );
  }
}
