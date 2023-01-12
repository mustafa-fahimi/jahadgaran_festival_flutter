import 'package:flutter/material.dart';

import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/features/core/enums/header_menu_enum.dart';

class HeaderCustomWidget extends StatelessWidget {
  const HeaderCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: double.infinity,
      child: ColoredBox(
        color: context.theme.colorScheme.primary,
        child: Row(
          children: List.generate(
            HeaderMenu.values.length * 2,
            (index) {
              if (index.isEven) {
                return _HeaderItem(
                  title: HeaderMenu.values[index ~/ 2].getMenuTitle(context),
                  onTap: () {},
                );
              } else if (index.isOdd &&
                  index != (HeaderMenu.values.length * 2) - 1) {
                return const VerticalDivider(
                  color: Colors.white38,
                  width: 2,
                  thickness: 2,
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}

class _HeaderItem extends StatelessWidget {
  const _HeaderItem({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title,
            style: body2.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
