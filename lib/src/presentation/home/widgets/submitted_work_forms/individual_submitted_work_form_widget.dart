// ignore_for_file: must_be_immutable

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/features/core/enums/register_type_enum.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/individual_submitted_work_params.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/dropdown_multi_select_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/attachment_type_enum.dart';
import 'package:responsive_framework/responsive_framework.dart';

class IndividualSubmitWorkFormWidget extends StatelessWidget {
  const IndividualSubmitWorkFormWidget({
    Key? key,
    required this.formKey,
    required this.nationalCode,
    required this.fnameController,
    required this.lnameController,
    required this.cityController,
    required this.verifyCodeController,
    required this.descriptionController,
    required this.verifyCodeFocusNode,
    required this.fnameFocusNode,
    required this.lnameFocusNode,
    required this.cityFocusNode,
    required this.descriptionFocusNode,
    required this.selectedAttachmentTypes,
    required this.selectedFile,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final String nationalCode;
  final TextEditingController fnameController;
  final TextEditingController lnameController;
  final TextEditingController cityController;
  final TextEditingController verifyCodeController;
  final TextEditingController descriptionController;
  final FocusNode fnameFocusNode;
  final FocusNode lnameFocusNode;
  final FocusNode cityFocusNode;
  final FocusNode verifyCodeFocusNode;
  final FocusNode descriptionFocusNode;
  final ValueNotifier<List<String>> selectedAttachmentTypes;
  final ValueNotifier<PlatformFile?> selectedFile;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (fnameController.text.isEmpty &&
            lnameController.text.isEmpty &&
            cityController.text.isEmpty) {
          fnameController.text = state.individualData?.fname ?? '';
          lnameController.text = state.individualData?.lname ?? '';
          cityController.text = state.individualData?.city ?? '';
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10),
            ElevatedButtonCustomWidget(
              height: 40,
              width: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
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
            const SizedBox(height: 20),
            Text(
              context.l10n.fname,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            OutlinedTextFieldCustomWidget(
              controller: fnameController,
              focusNode: fnameFocusNode,
              hintText: context.l10n.fname,
              validator: FormValidators().emptyValidator,
            ),
            const SizedBox(height: 15),
            Text(
              context.l10n.lname,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            OutlinedTextFieldCustomWidget(
              controller: lnameController,
              focusNode: lnameFocusNode,
              hintText: context.l10n.lname,
              validator: FormValidators().emptyValidator,
            ),
            const SizedBox(height: 15),
            Text(
              context.l10n.city,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            OutlinedTextFieldCustomWidget(
              controller: cityController,
              focusNode: cityFocusNode,
              hintText: context.l10n.city,
              validator: FormValidators().emptyValidator,
            ),
            const SizedBox(height: 15),
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
            const SizedBox(height: 15),
            Text(
              context.l10n.choose_attachment_type,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            DropdownMultiSelectWidget(
              onSelectedItemsChange: (value) {
                selectedAttachmentTypes.value.clear();
                selectedAttachmentTypes.value.addAll(value);
              },
              dropdownItems: List.generate(
                AttachmentType.values.length,
                (index) => AttachmentType.values[index].getTitle(context),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              context.l10n.choose_multi_attachment_type_description,
              style: subtitle1Bold.copyWith(color: Colors.pink),
            ),
            const SizedBox(height: 15),
            Text(
              context.l10n.description,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            OutlinedTextFieldCustomWidget(
              controller: descriptionController,
              focusNode: descriptionFocusNode,
              hintText: context.l10n.description_hint,
              minLines: 4,
              maxLines: 4,
            ),
            const SizedBox(height: 15),
            Text(
              context.l10n.choose_attachment_file,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            OutlinedButtonCustomWidget(
              onTap: _onTapSelectFile,
              btnText: context.l10n.choose_file,
              height: 40,
              width: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
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
                width: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
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

    if (selectedAttachmentTypes.value.isEmpty) {
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
      IndividualSubmittedWorkParams(
        nationalCode: nationalCode,
        fname: fnameController.text,
        lname: lnameController.text,
        city: cityController.text,
        verifyCode: verifyCodeController.text,
        attachmentType: selectedAttachmentTypes.value.join(', '),
        description: descriptionController.text,
      ).toJson()
        ..addAll({'file': file}),
    );

    bloc.add(HomeEvent.individualSubmittedWork(formData: formData));
  }
}
