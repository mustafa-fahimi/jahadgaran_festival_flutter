import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';

class UntilFestivalSideWidget extends StatelessWidget {
  const UntilFestivalSideWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWithTitleCustomWidget(
      title: context.l10n.until_event,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            AppHelper().calculateUntilStartDate(),
            style: heading5Bold,
          ),
        ),
      ),
    );
  }
}
