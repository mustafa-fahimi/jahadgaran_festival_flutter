import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class ImportantDatesWidget extends StatelessWidget {
  const ImportantDatesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /// Event begin
          Text(
            context.l10n.event_begin,
            style: body1,
            overflow: TextOverflow.clip,
          ),
          const SizedBox(height: 6),
          _ColoredDateWidget(text: context.l10n.event_begin_date),
          const Divider(
            height: 20,
            thickness: 1,
            color: Colors.black12,
          ),

          /// Event end
          Text(
            context.l10n.event_end,
            style: body1,
            overflow: TextOverflow.clip,
          ),
          const SizedBox(height: 6),
          _ColoredDateWidget(text: context.l10n.event_end_date),
        ],
      ),
    );
  }
}

class _ColoredDateWidget extends StatelessWidget {
  const _ColoredDateWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        child: Text(
          text,
          style: heading6.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
