// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

class GetAtlasCodeWidget extends HookWidget {
  GetAtlasCodeWidget({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey();
  late TextEditingController nationalCodeController;
  late FocusNode nationalCodeFocusNode;

  @override
  Widget build(BuildContext context) {
    nationalCodeController = useTextEditingController();
    nationalCodeFocusNode = useFocusNode();
    final getGroupDataFailMessage =
        context.watch<HomeBloc>().state.getAtlasCodeFailMessage;
    final getAtlasCodeResult =
        context.watch<HomeBloc>().state.getAtlasCodeResult;

    return ContainerWithTitleCustomWidget(
      title: context.l10n.atlas_code_inquiry,
      content: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 10),
              Text(
                context.l10n.atlas_code_inquiry_description,
                style: heading6,
              ),
              const SizedBox(height: 20),

              /// `National Code text field`
              SizedBox(
                width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                    ? double.infinity
                    : context.deviceWidthFactor(0.25),
                child: OutlinedTextFieldCustomWidget(
                  controller: nationalCodeController,
                  focusNode: nationalCodeFocusNode,
                  hintText: context.l10n.supervisor_national_code,
                  validator: FormValidators().emptyValidator,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButtonCustomWidget(
                onTap: () => _onTapGetAtlasCode(context),
                btnText: context.l10n.atlas_code_inquiry,
                height: 40,
                isLoading:
                    context.watch<HomeBloc>().state.isLoadingGetAtlasCode,
                width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                    ? double.infinity
                    : context.deviceWidthFactor(0.1),
                color: context.theme.colorScheme.primary,
              ),
              const SizedBox(height: 20),
              if (getAtlasCodeResult.isEmpty &&
                  getGroupDataFailMessage.isNotEmpty)
                Text(
                  getGroupDataFailMessage,
                  style: heading5Bold.copyWith(color: kErrorColor),
                )
              else if (getAtlasCodeResult.isNotEmpty)
                Text(
                  getAtlasCodeResult,
                  style: heading5Bold.copyWith(color: kSuccessColor),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapGetAtlasCode(BuildContext context) {
    /// If we have validation error then do nothing and return
    if (!formKey.currentState!.validate()) return;

    context.read<HomeBloc>().add(
          HomeEvent.getAtlasCode(
            groupSupervisorNationalCode: nationalCodeController.text,
          ),
        );
  }
}
