import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';

class UntilFestivalWidget extends StatelessWidget {
  const UntilFestivalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          context.l10n.until_event_description,
          style: heading5Bold,
        ),
      ),
    );
  }
}
