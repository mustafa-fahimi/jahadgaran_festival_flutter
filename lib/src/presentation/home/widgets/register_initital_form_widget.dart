import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/features/core/enums/register_type_enum.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/register_params.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RegisterInititalFormWidget extends HookWidget {
  const RegisterInititalFormWidget({
    Key? key,
    required this.formKey,
    required this.nationalCodeController,
    required this.phoneNumberController,
    required this.nationalCodeFocusNode,
    required this.phoneNumberFocusNode,
    required this.selectedRegisterType,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController nationalCodeController;
  final TextEditingController phoneNumberController;
  final FocusNode nationalCodeFocusNode;
  final FocusNode phoneNumberFocusNode;
  final ValueNotifier<RegisterType?> selectedRegisterType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.login_limit_description,
          style: subtitle1Bold.copyWith(color: kInfoColor),
        ),
        const SizedBox(height: 15),
        Text(
          context.l10n.register_type_hint,
          style: subtitle2,
        ),
        const SizedBox(height: 8),
        DropdownButtonHideUnderline(
          child: DropdownButton2(
            items: RegisterType.values
                .sublist(0, 3)
                .map(
                  (item) => DropdownMenuItem<RegisterType?>(
                    value: item,
                    child: Text(
                      item.getName(context),
                      style: subtitle2.copyWith(color: Colors.white),
                    ),
                  ),
                )
                .toList(),
            value: selectedRegisterType.value,
            onChanged: (value) => selectedRegisterType.value = value,
            buttonStyleData: ButtonStyleData(
              height: 40,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultBorderRadius),
                color: context.theme.colorScheme.primary,
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(height: 40),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.white,
              ),
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultBorderRadius),
                color: context.theme.colorScheme.primary,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          context.l10n.national_code_hint,
          style: subtitle2,
        ),
        const SizedBox(height: 8),
        OutlinedTextFieldCustomWidget(
          controller: nationalCodeController,
          focusNode: nationalCodeFocusNode,
          hintText: context.l10n.national_code_hint,
          validator: (value) => FormValidators().emptyAndLengthValidator(
            value,
            7,
          ),
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          maxLength: 10,
        ),
        const SizedBox(height: 20),
        Text(
          context.l10n.phone_number,
          style: subtitle2,
        ),
        const SizedBox(height: 8),
        OutlinedTextFieldCustomWidget(
          controller: phoneNumberController,
          focusNode: phoneNumberFocusNode,
          hintText: context.l10n.phone_number,
          validator: FormValidators().phoneNumberValidator,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          maxLength: 11,
        ),
        const SizedBox(height: 20),
        ElevatedButtonCustomWidget(
          onTap: () => _onTapCheckInformation(context),
          btnText: context.l10n.check_information,
          height: 40,
          isLoading: context.watch<HomeBloc>().state.isLoading,
          width: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              ? double.infinity
              : 200,
          color: context.theme.colorScheme.primary,
        ),
        const SizedBox(height: 20),
        if (context.watch<HomeBloc>().state.isSubmitWorkSuccessful)
          Center(
            child: Text(
              context.l10n.submit_successfull,
              style: heading5Bold.copyWith(color: kSuccessColor),
            ),
          ),
        const SizedBox(height: 20),
      ],
    );
  }

  void _onTapCheckInformation(BuildContext context) {
    /// If we have validation error then do nothing and return
    if (!formKey.currentState!.validate()) return;
    final homeBloc = context.read<HomeBloc>();

    if (selectedRegisterType.value == RegisterType.jahadiGroup) {
      homeBloc.add(
        HomeEvent.registerJahadiGroup(
          registerParams: RegisterParams(
            nationalCode: nationalCodeController.text,
            phoneNumber: phoneNumberController.text,
          ),
        ),
      );
    } else if (selectedRegisterType.value == RegisterType.individual) {
      homeBloc.add(
        HomeEvent.registerIndividual(
          registerParams: RegisterParams(
            nationalCode: nationalCodeController.text,
            phoneNumber: phoneNumberController.text,
          ),
        ),
      );
    } else if (selectedRegisterType.value == RegisterType.group) {
      homeBloc.add(
        HomeEvent.registerGroup(
          registerParams: RegisterParams(
            nationalCode: nationalCodeController.text,
            phoneNumber: phoneNumberController.text,
          ),
        ),
      );
    }
  }
}
