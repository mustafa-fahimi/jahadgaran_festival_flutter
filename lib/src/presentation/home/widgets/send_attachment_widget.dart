import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';

class SendAttachmentWidget extends HookWidget {
  const SendAttachmentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
      child: OutlinedButtonCustomWidget(
        btnText: context.l10n.register_and_send,
        width: double.infinity,
        height: 50,
        onTap: () => _onTapRegisterButton(context),
        buttonColor: context.theme.colorScheme.primary,
      ),
    );
  }

  void _onTapRegisterButton(BuildContext context) {
    context.read<HomeBloc>().add(
          const HomeEvent.changeMiddleView(view: HomeMiddleViews.register),
        );
  }
}
