import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';

class AdminPanelLinkSideWidget extends StatelessWidget {
  const AdminPanelLinkSideWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => context.read<HomeBloc>().add(
              const HomeEvent.changeMiddleView(
                view: HomeMiddleViews.adminPanel,
              ),
            ),
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
                context.l10n.admin_panel,
                style: subtitle1Bold.copyWith(color: Colors.white70),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
