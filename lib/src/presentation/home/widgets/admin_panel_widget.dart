import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AdminPanelWidget extends HookWidget {
  AdminPanelWidget({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey();
  late final TextEditingController tokenController;
  late final FocusNode tokenFocusNode;

  @override
  Widget build(BuildContext context) {
    tokenController = useTextEditingController();
    tokenFocusNode = useFocusNode();

    return ContainerWithTitleCustomWidget(
      title: context.l10n.admin_panel,
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              context.l10n.enter_token_description,
              style: heading6,
            ),
            const SizedBox(height: 20),

            /// `Token text field`
            SizedBox(
              width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                  ? double.infinity
                  : context.deviceWidthFactor(0.25),
              child: OutlinedTextFieldCustomWidget(
                controller: tokenController,
                focusNode: tokenFocusNode,
                hintText: context.l10n.token,
                validator: FormValidators().emptyValidator,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButtonCustomWidget(
              onTap: () => _onTapLogin(context),
              btnText: context.l10n.login,
              height: 40,
              isLoading: context.watch<HomeBloc>().state.isLoading,
              width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                  ? double.infinity
                  : context.deviceWidthFactor(0.1),
              color: context.theme.colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }

  void _onTapLogin(BuildContext context) {
    AppHelper().closeSoftKeyboard(context);
  }
}
