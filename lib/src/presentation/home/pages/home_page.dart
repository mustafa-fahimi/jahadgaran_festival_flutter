import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/injection/injectable.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/page_decorator.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:talker_flutter/talker_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<HomeBloc>();
    return BlocProvider(
      create: (_) => bloc..add(const HomeEvent.getUsers()),
      child: PageDecorator(
        appBar: const _HomeAppBar().build(context),
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

class _HomeAppBar extends StatelessWidget {
  const _HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightBlue[800],
      centerTitle: true,
      title: const Icon(Icons.home),
      leading: ResponsiveVisibility(
        hiddenWhen: const [Condition.largerThan(name: TABLET)],
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      actions: [
        const ResponsiveVisibility(
          visible: false,
          visibleWhen: [Condition.largerThan(name: TABLET)],
          child: _MenuTextButton(text: 'Courses'),
        ),
        const ResponsiveVisibility(
          visible: false,
          visibleWhen: [Condition.largerThan(name: TABLET)],
          child: _MenuTextButton(text: 'About'),
        ),
        IconButton(
          icon: const Icon(Icons.mark_email_unread_rounded),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.logout_rounded),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),

        /// Page title
        const _PageTitle(),
        const SizedBox(height: 30),
        ResponsiveRowColumn(
          rowMainAxisAlignment: MainAxisAlignment.center,
          rowSpacing: 30,
          columnSpacing: 30,
          columnPadding: const EdgeInsets.all(30),
          layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: SizedBox(
                width: context.deviceWidthFactor(0.3),
                height: 150,
                child: const ColoredBox(color: Colors.lightBlue),
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: SizedBox(
                width: context.deviceWidthFactor(0.3),
                height: 150,
                child: const ColoredBox(color: Colors.lightGreen),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 200,
          height: 60,
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) => state.when(
              idle: (isLoading, users) {
                if (isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Center(
                    child: Text(
                      users.length.toString(),
                      style: const TextStyle(fontSize: 28),
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _PageTitle extends StatelessWidget {
  const _PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Page Title',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: ResponsiveValue(
            context,
            defaultValue: 60,
            valueWhen: const [
              Condition.smallerThan(
                name: MOBILE,
                value: 50,
              ),
              Condition.largerThan(
                name: TABLET,
                value: 70,
              )
            ],
          ).value?.toDouble(),
          color: Colors.blueGrey[900],
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _MenuTextButton extends StatelessWidget {
  const _MenuTextButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
