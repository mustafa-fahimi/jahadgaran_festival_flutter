import 'package:flutter/material.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/all_news_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/festival_information_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/introduction_widget.dart';

class HomeMainWidget extends StatelessWidget {
  const HomeMainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerWithTitleCustomWidget(
          title: context.l10n.introduction,
          content: const IntroductionWidget(),
        ),
        const SizedBox(height: 10),
        ContainerWithTitleCustomWidget(
          title: context.l10n.event_information,
          content: const FestivalInformationWidget(),
        ),
        const SizedBox(height: 10),
        ContainerWithTitleCustomWidget(
          title: context.l10n.news,
          content: AllNewsWidget(),
        ),
      ],
    );
  }
}
