import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';

class SendDataLaterWidget extends StatelessWidget {
  const SendDataLaterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWithTitleCustomWidget(
      title: context.l10n.register_and_send,
      content: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Center(
          child: Text(
            context.l10n.send_data_later,
            style: heading5Bold.copyWith(color: kInfoColor),
          ),
        ),
      ),
    );
  }
}
