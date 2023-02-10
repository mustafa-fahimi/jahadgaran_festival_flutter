import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/enums/header_menu_enum.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';

class MenuBarCustomWidget extends StatelessWidget {
  const MenuBarCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 3, child: SizedBox()),
        const SizedBox(width: 25),
        Expanded(
          flex: 9,
          child: SizedBox(
            height: 45,
            child: Column(
              children: [
                /// `Top divider`
                const _GradientDividerWidget(),
                DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(PngAssets.headerMenuBgAsset),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      HeaderMenu.values.length,
                      (index) => _HeaderItem(
                        headerMenu: HeaderMenu.values[index],
                        isHome: index == 0,
                      ),
                    ),
                  ),
                ),

                /// `Bottom divider`
                const _GradientDividerWidget(),
              ],
            ),
          ),
        ),
        const SizedBox(width: 25),
        const Expanded(flex: 3, child: SizedBox()),
      ],
    );
  }
}

class _GradientDividerWidget extends StatelessWidget {
  const _GradientDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      PngAssets.gradientDividerAsset,
      width: context.deviceWidthFactor(0.6),
      fit: BoxFit.fitWidth,
    );
  }
}

class _HeaderItem extends StatelessWidget {
  const _HeaderItem({
    Key? key,
    required this.headerMenu,
    required this.isHome,
  }) : super(key: key);

  final HeaderMenu headerMenu;
  final bool isHome;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () => context.read<HomeBloc>().add(
              HomeEvent.changeMiddleView(
                view: headerMenu.getProperMiddleView(),
              ),
            ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Center(
            child: isHome
                ? Image.asset(PngAssets.homeAsset)
                : Text(
                    headerMenu.getMenuTitle(context),
                    style: subtitle1Bold.copyWith(color: Colors.white),
                  ),
          ),
        ),
      ),
    );
  }
}
