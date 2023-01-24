import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

class FestivalInformationWidget extends StatelessWidget {
  const FestivalInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerStyle = subtitle1Bold.copyWith(color: Colors.white);
    final contentStyle = heading6.copyWith(color: Colors.black54);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        width: double.infinity,
        child: Accordion(
          maxOpenSections: 1,
          headerBackgroundColor: context.theme.colorScheme.primary,
          headerBackgroundColorOpened: kSuccessColor,
          scaleWhenAnimating: true,
          openAndCloseAnimation: true,
          contentHorizontalPadding: 16,
          contentVerticalPadding: 16,
          contentBorderWidth: 1,
          paddingListBottom: 20,
          headerPadding: const EdgeInsets.symmetric(
            vertical: 7,
            horizontal: 15,
          ),
          sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          sectionClosingHapticFeedback: SectionHapticFeedback.light,
          children: [
            AccordionSection(
              isOpen: true,
              leftIcon: const Icon(
                Icons.insights_rounded,
                color: Colors.white,
              ),
              header: Text(context.l10n.introduction, style: headerStyle),
              content: Text(
                context.l10n.introduction_description,
                style: contentStyle,
              ),
            ),
            AccordionSection(
              index: 1,
              leftIcon: const Icon(
                Icons.insights_rounded,
                color: Colors.white,
              ),
              header: Text(context.l10n.contacts, style: headerStyle),
              content: Text(
                context.l10n.condition_description,
                style: contentStyle,
              ),
            ),
            AccordionSection(
              index: 2,
              leftIcon: const Icon(
                Icons.insights_rounded,
                color: Colors.white,
              ),
              header: Text(context.l10n.conditions, style: headerStyle),
              content: Text(
                context.l10n.condition_description,
                style: contentStyle,
              ),
            ),
            AccordionSection(
              index: 3,
              leftIcon: const Icon(
                Icons.insights_rounded,
                color: Colors.white,
              ),
              header: Text(context.l10n.advantages, style: headerStyle),
              content: Text(
                context.l10n.advantages_description,
                textAlign: TextAlign.start,
                style: contentStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
