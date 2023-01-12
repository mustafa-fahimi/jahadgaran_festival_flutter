import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';

class NoDataCustomWidget extends StatelessWidget {
  const NoDataCustomWidget({
    super.key,
    this.height = 140,
    this.onTapRetry,
  });
  final double height;
  final dynamic Function()? onTapRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'empty_list',
            textAlign: TextAlign.center,
          ),
          if (onTapRetry != null) ...[
            const SizedBox(height: 8),
            ElevatedButtonCustomWidget(
              btnText: 'retry',
              onTap: onTapRetry,
              height: 30,
              width: 90,
            ),
          ],
        ],
      ),
    );
  }
}
