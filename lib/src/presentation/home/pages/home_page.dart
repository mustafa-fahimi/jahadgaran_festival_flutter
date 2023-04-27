import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/injection/injectable.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/page_decorator.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/menu_bar_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/side/download_apk_side_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/side/f_a_q_slider_side_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/side/important_dates_side_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/side/organizers_side_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/side/register_side_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/side/until_festival_side_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/side/website_link_side_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<HomeBloc>();
    return BlocProvider(
      create: (_) => bloc,
      child: const PageDecorator(
        body: _HomeBody(),
        /* floatingActionButton: FloatingActionButton(
          onPressed: () => context.router.pushWidget(
            TalkerScreen(talker: getIt.get<Talker>()),
          ),
          child: const Icon(
            Icons.monitor_heart_outlined,
            color: Colors.white,
          ),
        ), */
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// `Page background`
        Positioned.fill(
          child: Image.asset(
            PngAssets.bgPatternAsset,
            repeat: ImageRepeat.repeat,
          ),
        ),
        Positioned.fill(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),

                /// Header Image
                Center(
                  child: Image.asset(
                    PngAssets.headerBannerAsset,
                    height: 70,
                    fit: BoxFit.fill,
                  ),
                ),
                const MenuBarCustomWidget(),
                const SizedBox(height: 15),
                ResponsiveRowColumn(
                  layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  rowCrossAxisAlignment: CrossAxisAlignment.start,
                  rowSpacing: 15,
                  columnSpacing: 15,
                  columnPadding: const EdgeInsets.symmetric(horizontal: 10),
                  rowPadding: const EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    ResponsiveRowColumnItem(
                      rowFlex: 3,
                      child:
                          ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                              ? const _MiddleSectionWidget()
                              : const _RightSectionWidget(),
                    ),
                    ResponsiveRowColumnItem(
                      rowFlex: 9,
                      child:
                          ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                              ? const _RightSectionWidget()
                              : const _MiddleSectionWidget(),
                    ),
                    const ResponsiveRowColumnItem(
                      rowFlex: 3,
                      child: _LeftSectionWidget(),
                    ),
                  ],
                ),
                const SizedBox(height: 90),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _RightSectionWidget extends StatelessWidget {
  const _RightSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ContainerWithTitleCustomWidget(
          title: context.l10n.register_and_send,
          content: const RegisterSideWidget(),
        ),
        const SizedBox(height: 10),
        ContainerWithTitleCustomWidget(
          title: context.l10n.download_application,
          content: const DownloadApkSideWidget(),
        ),
        const SizedBox(height: 10),
        ContainerWithTitleCustomWidget(
          title: context.l10n.until_event,
          content: const UntilFestivalSideWidget(),
        ),
        const SizedBox(height: 10),
        ContainerWithTitleCustomWidget(
          title: context.l10n.important_dates,
          content: const ImportantDatesSideWidget(),
        ),
        const SizedBox(height: 10),
        ContainerWithTitleCustomWidget(
          title: context.l10n.frequently_asked_questions,
          content: const FAQSliderSideWidget(),
        ),
      ],
    );
  }
}

class _MiddleSectionWidget extends StatelessWidget {
  const _MiddleSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) => HomeMiddleViews.values
          .firstWhere((middleView) => middleView == state.currentMiddleView)
          .getCorrespondingWidget(news: state.selectedNews),
    );
  }
}

class _LeftSectionWidget extends StatelessWidget {
  const _LeftSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerWithTitleCustomWidget(
          title: context.l10n.organizers,
          content: const OrganizersSideWidget(),
        ),
        const SizedBox(height: 20),
        WebsiteLinkSideWidget(
          title: context.l10n.website_supreme_leader,
          url: 'https://farsi.khamenei.ir/',
        ),
        const SizedBox(height: 15),
        WebsiteLinkSideWidget(
          title: context.l10n.jahadgaran_atlas,
          url: 'https://www.atlas.tara.co.ir',
        ),
        const SizedBox(height: 15),
        WebsiteLinkSideWidget(
          title: context.l10n.jahadgaran_festival_ir,
          url:
              'https://jahadgaran.org/tag/%D8%AC%D8%B4%D9%86%D9%88%D8%A7%D8%B1%D9%87-%D9%85%D9%84%DB%8C-%D8%AC%D9%87%D8%A7%D8%AF%DA%AF%D8%B1%D8%A7%D9%86/',
        ),
      ],
    );
  }
}
