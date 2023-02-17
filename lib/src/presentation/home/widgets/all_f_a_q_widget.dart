import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/f_a_q_enum.dart';

class AllFAQWidget extends StatelessWidget {
  const AllFAQWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerStyle = subtitle1Bold.copyWith(color: Colors.white);
    final contentStyle = heading6.copyWith(color: Colors.black54);

    return SizedBox(
      width: double.infinity,
      child: Accordion(
        maxOpenSections: 5,
        headerBackgroundColor: context.theme.colorScheme.primary,
        headerBackgroundColorOpened: kSuccessColor,
        scaleWhenAnimating: true,
        openAndCloseAnimation: true,
        contentBorderWidth: 1,
        paddingListBottom: 20,
        headerPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
        sectionClosingHapticFeedback: SectionHapticFeedback.light,
        children: List.generate(
          FAQ.values.length,
          (index) => AccordionSection(
            isOpen: index == 0,
            accordionId: index.toString(),
            paddingBetweenClosedSections: 18,
            paddingBetweenOpenSections: 18,
            contentVerticalPadding: 25,
            leftIcon: const Icon(
              Icons.question_answer_rounded,
              color: Colors.white,
            ),
            header: Text(
              FAQ.values[index].getQuestion(context),
              style: headerStyle,
            ),
            content: Text(
              FAQ.values[index].getAnswer(context),
              style: contentStyle,
            ),
          ),
        ),
      ),
    );
  }
}
