import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/home_middle_views_enum.dart';

class AuthenticationWidget extends HookWidget {
  const AuthenticationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneTextController = useTextEditingController();
    final verifyCodeTextController = useTextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /// Phone Number
          Text(
            context.l10n.phone_number,
            style: body1Bold,
            overflow: TextOverflow.clip,
          ),
          OutlinedTextFieldCustomWidget(
            controller: phoneTextController,
          ),
          const SizedBox(height: 10),

          /// Verify Code
          Visibility(
            visible: false,
            child: Text(
              context.l10n.verify_code,
              style: body1Bold,
              overflow: TextOverflow.clip,
            ),
          ),
          Visibility(
            visible: false,
            child: OutlinedTextFieldCustomWidget(
              controller: verifyCodeTextController,
            ),
          ),
          const SizedBox(height: 10),

          /// Login and register button
          Row(
            children: <Widget>[
              /// `Login button`
              Expanded(
                child: ElevatedButtonCustomWidget(
                  btnText: context.l10n.login,
                  height: 35,
                  color: context.theme.colorScheme.primary,
                ),
              ),
              const SizedBox(width: 6),

              /// `Register button`
              Expanded(
                child: OutlinedButtonCustomWidget(
                  btnText: context.l10n.register,
                  onTap: () => _onTapRegisterButton(context),
                  height: 35,
                  buttonColor: context.theme.colorScheme.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onTapRegisterButton(BuildContext context) {
    context.read<HomeBloc>().add(
          const HomeEvent.changeMiddleView(view: HomeMiddleViews.register),
        );
  }
}
