// ignore_for_file: must_be_immutable

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/features/core/enums/register_type_enum.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/jahadi_group_submitted_work_params.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/attachment_type_enum.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/submitted_work_forms/attachment_type_dropdown_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class JahadiGroupSubmitWorkFormWidget extends StatelessWidget {
  const JahadiGroupSubmitWorkFormWidget({
    required this.formKey,
    required this.nationalCode,
    required this.verifyCodeController,
    required this.descriptionController,
    required this.verifyCodeFocusNode,
    required this.descriptionFocusNode,
    required this.selectedAttachmentType,
    required this.selectedFile,
    Key? key,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final String nationalCode;
  final TextEditingController verifyCodeController;
  final TextEditingController descriptionController;
  final FocusNode verifyCodeFocusNode;
  final FocusNode descriptionFocusNode;
  final ValueNotifier<String?> selectedAttachmentType;
  final ValueNotifier<PlatformFile?> selectedFile;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10),
            ElevatedButtonCustomWidget(
              height: 40,
              width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                  ? double.infinity
                  : 200,
              color: context.theme.colorScheme.primary,
              iconWidget: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
                size: 19,
              ),
              onTap: () => context.read<HomeBloc>().add(
                    const HomeEvent.changeFormState(
                      registerFormState: RegisterType.initial,
                    ),
                  ),
              btnText: context.l10n.return_to_previous_step,
            ),
            const SizedBox(height: 15),
            Text(
              context.l10n.group_information,
              style: heading5Bold,
            ),
            const SizedBox(height: 10),
            Text(
              context.l10n.group_information_description,
              style: subtitle1.copyWith(color: kInfoColor),
            ),
            const SizedBox(height: 20),
            Text(
              '''${context.l10n.jahadi_group_fullname}: ${state.jahadiGroupData.groupName}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.jahadi_group_registration_code}: ${state.jahadiGroupData.groupRegisterationNumber}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.group_registre_date}: ${state.jahadiGroupData.groupRegisterDate}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.group_nature}: ${state.jahadiGroupData.groupNature}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.state}: ${state.jahadiGroupData.groupState}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.city}: ${state.jahadiGroupData.groupCity}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.supervisor_fullname}: ${state.jahadiGroupData.groupSupervisorFullname}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.supervisor_national_code}: ${state.jahadiGroupData.groupSupervisorNationalCode}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.supervisor_phone}: ${state.jahadiGroupData.groupSupervisorPhone}''',
              style: subtitle1,
            ),
            const SizedBox(height: 40),
            Text(
              context.l10n.verify_code_description,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            OutlinedTextFieldCustomWidget(
              controller: verifyCodeController,
              focusNode: verifyCodeFocusNode,
              hintText: context.l10n.verify_code,
              validator: (value) => FormValidators().emptyAndLengthValidator(
                value,
                5,
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 5,
            ),
            const SizedBox(height: 20),
            Text(
              context.l10n.choose_attachment_file,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            OutlinedButtonCustomWidget(
              onTap: _onTapSelectFile,
              btnText: context.l10n.choose_file,
              height: 40,
              width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                  ? 150
                  : 200,
              buttonColor: context.theme.colorScheme.primary,
            ),
            const SizedBox(height: 15),
            if (selectedFile.value != null)
              RichText(
                text: TextSpan(
                  text: '${context.l10n.chosen_file_name}:\n',
                  style: subtitle1,
                  children: [
                    TextSpan(
                      text: selectedFile.value?.name,
                      style: heading6.copyWith(color: kSuccessColor),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 20),
            Text(
              context.l10n.choose_attachment_type,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            AttachmentTypeDropdownWidget(
              dropdownItems: List.generate(
                AttachmentType.values.length,
                (index) => AttachmentType.values[index].getTitle(context),
              ),
              selectedAttachmentType: selectedAttachmentType,
            ),
            const SizedBox(height: 20),
            Text(
              context.l10n.description,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            OutlinedTextFieldCustomWidget(
              controller: descriptionController,
              focusNode: descriptionFocusNode,
              hintText: context.l10n.description,
              minLines: 3,
              maxLines: 3,
            ),
            const SizedBox(height: 40),
            BlocConsumer<HomeBloc, HomeState>(
              listener: (context, state) {
                if (state.isSubmitWorkSuccessful) {
                  AppHelper().displayToast(
                    context,
                    message: context.l10n.submit_successfull,
                  );
                } else if (state.submitWorkFailMessage.isNotEmpty) {
                  AppHelper().displayToast(
                    context,
                    message: state.submitWorkFailMessage,
                    isFailureMessage: true,
                  );
                }
              },
              builder: (context, state) => ElevatedButtonCustomWidget(
                onTap: () => _onTapSendData(context),
                btnText: context.l10n.submit_information,
                height: 40,
                isLoading: state.isLoadingSubmitWork,
                width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                    ? double.infinity
                    : 200,
                color: context.theme.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }

  Future<void> _onTapSelectFile() async {
    /// Select a file with accepted formats
    final result = await FilePicker.platform.pickFiles(withData: true);

    if (result != null) {
      final file = result.files.single;
      selectedFile.value = file;
    } else {
      /// User canceled the picker
      selectedFile.value = null;
    }
  }

  void _onTapSendData(BuildContext context) {
    /// If we have validation error then do nothing and return
    if (!formKey.currentState!.validate()) return;

    if (selectedAttachmentType.value == null ||
        selectedAttachmentType.value!.isEmpty) {
      AppHelper().displayToast(
        context,
        message: context.l10n.must_choose_attachment_type,
        isFailureMessage: true,
      );
      return;
    } else if (selectedFile.value == null) {
      AppHelper().displayToast(
        context,
        message: context.l10n.must_choose_attachment_file,
        isFailureMessage: true,
      );
      return;
    } else if (selectedFile.value!.size > maxFileSize) {
      AppHelper().displayToast(
        context,
        message: context.l10n.large_file_size_description,
        isFailureMessage: true,
      );
      return;
    }

    /// Create `FormData` from file to send it to the server
    final file = MultipartFile.fromBytes(
      selectedFile.value!.bytes!.toList(),
      filename: selectedFile.value!.name,
    );

    final bloc = context.read<HomeBloc>();

    final formData = FormData.fromMap(
      JahadiGroupSubmittedWorkParams(
        nationalCode: nationalCode,
        verifyCode: verifyCodeController.text,
        attachmentType: selectedAttachmentType.value!,
        description: descriptionController.text,
      ).toJson()
        ..addAll({'file': file}),
    );

    bloc.add(HomeEvent.jahadiGroupSubmittedWork(formData: formData));
  }
}
