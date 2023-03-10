import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';

class RegisterConditionWidget extends StatelessWidget {
  const RegisterConditionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWithTitleCustomWidget(
      title: context.l10n.register_and_send,
      content: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10),
            Text(
              context.l10n.register_condition_description,
              style: subtitle1,
            ),
            const SizedBox(height: 20),

            /// `PDF link`
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  context.l10n.register_condition_link,
                  style: subtitle1Bold.copyWith(
                    decoration: TextDecoration.underline,
                    color: kInfoColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
