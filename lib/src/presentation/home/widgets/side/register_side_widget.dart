import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';

class RegisterSideWidget extends HookWidget {
  const RegisterSideWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GlowButton(
        onPressed: () => _onTapRegisterButton(context),
        width: double.infinity,
        height: 60,
        color: Colors.lightGreen,
        child: Text(
          context.l10n.register_and_send,
          style: subtitle2Bold.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  void _onTapRegisterButton(BuildContext context) {
    context.read<HomeBloc>().add(
          const HomeEvent.changeMiddleView(view: HomeMiddleViews.register),
        );
  }
}
