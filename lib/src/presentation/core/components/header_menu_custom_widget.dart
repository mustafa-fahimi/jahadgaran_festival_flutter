import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/enums/header_menu_enum.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';

class HeaderMenuCustomWidget extends StatelessWidget {
  const HeaderMenuCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ColoredBox(
        color: context.theme.colorScheme.primary,
        child: ListView.separated(
          itemCount: HeaderMenu.values.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => _HeaderItem(
            headeMenu: HeaderMenu.values[index],
          ),
          separatorBuilder: (context, index) => const VerticalDivider(
            color: Colors.white38,
            width: 2,
            thickness: 2,
          ),
        ),
      ),
    );
  }
}

class _HeaderItem extends StatelessWidget {
  const _HeaderItem({
    Key? key,
    required this.headeMenu,
  }) : super(key: key);

  final HeaderMenu headeMenu;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () => context.read<HomeBloc>().add(
              HomeEvent.changeMiddleView(
                view: headeMenu.getProperMiddleView(),
              ),
            ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              headeMenu.getMenuTitle(context),
              style: subtitle1Bold.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
