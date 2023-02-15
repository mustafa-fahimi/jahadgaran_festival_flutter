import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/injection/injectable.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/menu_bar_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/page_decorator.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/authentication_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/f_a_q_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/important_dates_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/organizers_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/register_guid_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/until_festival_widget.dart';
import 'package:talker_flutter/talker_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<HomeBloc>();
    return BlocProvider(
      create: (_) => bloc,
      child: PageDecorator(
        body: const _HomeBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.router.pushWidget(
            TalkerScreen(talker: getIt.get<Talker>()),
          ),
          child: const Icon(
            Icons.monitor_heart_outlined,
            color: Colors.white,
          ),
        ),
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
                Row(
                  children: <Widget>[
                    /// `Emam photo`
                    _LeadersImageWidget(image: PngAssets.emamAsset),
                    Expanded(
                      flex: 9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          /// Header Image
                          Image.asset(
                            PngAssets.headerBannerAsset,
                            width: context.deviceWidthFactor(0.6),
                            height: 110,
                            fit: BoxFit.fill,
                          ),
                          const MenuBarCustomWidget(),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),

                    /// `Rahbar photo`
                    _LeadersImageWidget(image: PngAssets.rahbarAsset),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    SizedBox(width: 10),
                    _RightSectionWidget(),
                    SizedBox(width: 15),
                    _MiddleSectionWidget(),
                    SizedBox(width: 15),
                    _LeftSectionWidget(),
                    SizedBox(width: 10),
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
    return Expanded(
      flex: 3,
      child: Column(
        children: <Widget>[
          ContainerWithTitleCustomWidget(
            title: context.l10n.login_to_system,
            content: const AuthenticationWidget(),
          ),
          const SizedBox(height: 10),
          ContainerWithTitleCustomWidget(
            title: context.l10n.register_guid,
            content: const RegisterGuidWidget(),
          ),
          const SizedBox(height: 10),
          ContainerWithTitleCustomWidget(
            title: context.l10n.until_event,
            content: const UntilFestivalWidget(),
          ),
          const SizedBox(height: 10),
          ContainerWithTitleCustomWidget(
            title: context.l10n.important_dates,
            content: const ImportantDatesWidget(),
          ),
          const SizedBox(height: 10),
          ContainerWithTitleCustomWidget(
            title: context.l10n.frequently_asked_questions,
            content: const FAQWidget(),
          ),
          const SizedBox(height: 10),
          ContainerWithTitleCustomWidget(
            title: context.l10n.organizers,
            content: const OrganizersWidget(),
          ),
        ],
      ),
    );
  }
}

class _MiddleSectionWidget extends StatelessWidget {
  const _MiddleSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => state.when(
          idle: (isLoading, currentMiddleView) => HomeMiddleViews.values
              .firstWhere((middleView) => middleView == currentMiddleView)
              .getCorrespondingWidget(),
        ),
      ),
    );
  }
}

class _LeftSectionWidget extends StatelessWidget {
  const _LeftSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          _WebsiteLinkWidget(title: context.l10n.supreme_leader),
          const SizedBox(height: 15),
          _WebsiteLinkWidget(title: context.l10n.jahadgaran_atlas),
          const SizedBox(height: 15),
          _WebsiteLinkWidget(title: context.l10n.jahadgaran_festival_ir),
        ],
      ),
    );
  }
}

class _WebsiteLinkWidget extends StatelessWidget {
  const _WebsiteLinkWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          width: double.infinity,
          height: 75,
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(PngAssets.menu1Asset),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: subtitle1Bold.copyWith(color: Colors.white70),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LeadersImageWidget extends StatelessWidget {
  const _LeadersImageWidget({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 3,
      child: Padding(
        padding: EdgeInsets.all(30),
        /* child: Image.asset(
          image,
          width: 100,
          height: 130,
        ), */
      ),
    );
  }
}
