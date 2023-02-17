import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/festival_information_enum.dart';

class FestivalInformationWidget extends StatelessWidget {
  const FestivalInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerStyle = subtitle1Bold.copyWith(color: Colors.white);
    final contentStyle = heading6.copyWith(color: Colors.black54);

    return SizedBox(
      width: double.infinity,
      child: Accordion(
        maxOpenSections: 1,
        headerBackgroundColor: context.theme.colorScheme.primary,
        headerBackgroundColorOpened: kSuccessColor,
        scaleWhenAnimating: true,
        openAndCloseAnimation: true,
        paddingListBottom: 1,
        contentBorderWidth: 1,
        headerPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
        sectionClosingHapticFeedback: SectionHapticFeedback.light,
        children: List.generate(
          FestivalInformation.values.length,
          (index) => AccordionSection(
            isOpen: index == 0,
            paddingBetweenClosedSections: 16,
            paddingBetweenOpenSections: 16,
            contentVerticalPadding: 16,
            leftIcon: const Icon(
              Icons.insights_rounded,
              color: Colors.white,
            ),
            header: Text(
              FestivalInformation.values[index].getTitle(context),
              style: headerStyle,
            ),
            content: SizedBox(
              width: double.infinity,
              child: Text(
                FestivalInformation.values[index].getContent(context),
                style: contentStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
