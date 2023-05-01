// ignore_for_file: must_be_immutable

import 'package:dio/dio.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/features/core/enums/register_type_enum.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/group_submitted_work_params.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/dropdown_multi_select_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/attachment_type_enum.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/group_institution_enum.dart';
import 'package:responsive_framework/responsive_framework.dart';

class GroupSubmitWorkFormWidget extends StatelessWidget {
  const GroupSubmitWorkFormWidget({
    Key? key,
    required this.nationalCode,
    required this.formKey,
    required this.groupNameController,
    required this.establishedYearController,
    required this.groupLicenseNumberController,
    required this.groupInstitutionController,
    required this.groupCityController,
    required this.groupSupervisorFnameController,
    required this.groupSupervisorLnameController,
    required this.verifyCodeController,
    required this.descriptionController,
    required this.groupNameFocusNode,
    required this.establishedYearFocusNode,
    required this.groupLicenseNumberFocusNode,
    required this.groupInstitutionFocusNode,
    required this.groupCityFocusNode,
    required this.groupSupervisorFnameFocusNode,
    required this.groupSupervisorLnameFocusNode,
    required this.verifyCodeFocusNode,
    required this.descriptionFocusNode,
    required this.selectedAttachmentTypes,
    required this.selectedFile,
    required this.selectedHasLicense,
    required this.selectedInstitution,
  }) : super(key: key);

  final String nationalCode;
  final GlobalKey<FormState> formKey;
  final TextEditingController groupNameController;
  final TextEditingController establishedYearController;
  final TextEditingController groupLicenseNumberController;
  final TextEditingController groupInstitutionController;
  final TextEditingController groupCityController;
  final TextEditingController groupSupervisorFnameController;
  final TextEditingController groupSupervisorLnameController;
  final TextEditingController verifyCodeController;
  final TextEditingController descriptionController;
  final FocusNode groupNameFocusNode;
  final FocusNode establishedYearFocusNode;
  final FocusNode groupLicenseNumberFocusNode;
  final FocusNode groupInstitutionFocusNode;
  final FocusNode groupCityFocusNode;
  final FocusNode groupSupervisorFnameFocusNode;
  final FocusNode groupSupervisorLnameFocusNode;
  final FocusNode verifyCodeFocusNode;
  final FocusNode descriptionFocusNode;
  final ValueNotifier<List<String>> selectedAttachmentTypes;
  final ValueNotifier<PlatformFile?> selectedFile;
  final ValueNotifier<String?> selectedHasLicense;
  final ValueNotifier<GroupInstitution?> selectedInstitution;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (groupNameController.text.isEmpty &&
            establishedYearController.text.isEmpty &&
            groupLicenseNumberController.text.isEmpty &&
            groupInstitutionController.text.isEmpty &&
            groupCityController.text.isEmpty &&
            groupSupervisorFnameController.text.isEmpty &&
            groupSupervisorLnameController.text.isEmpty &&
            state.groupData != null) {
          groupNameController.text = state.groupData!.groupName;
          establishedYearController.text =
              state.groupData!.establishedYear != null
                  ? state.groupData!.establishedYear!.toString()
                  : '';
          groupLicenseNumberController.text =
              state.groupData!.groupLicenseNumber != null
                  ? state.groupData!.groupLicenseNumber!
                  : '';
          groupInstitutionController.text = state.groupData!.groupInstitution;
          groupCityController.text = state.groupData!.groupCity;
          groupSupervisorFnameController.text =
              state.groupData!.groupSupervisorFname;
          groupSupervisorLnameController.text =
              state.groupData!.groupSupervisorLname;
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
              context.l10n.group_name,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            OutlinedTextFieldCustomWidget(
              controller: groupNameController,
              focusNode: groupNameFocusNode,
              hintText: context.l10n.group_name,
              validator: FormValidators().emptyValidator,
            ),
            const SizedBox(height: 15),
            Text(
              context.l10n.established_year,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            OutlinedTextFieldCustomWidget(
              controller: establishedYearController,
              focusNode: establishedYearFocusNode,
              hintText: context.l10n.established_year,
              validator: (value) => FormValidators().emptyAndLengthValidator(
                value,
                4,
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 4,
            ),
            const SizedBox(height: 15),
            Text(
              context.l10n.has_group_license,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String?>(
                items: [context.l10n.yes, context.l10n.no]
                    .map(
                      (item) => DropdownMenuItem<String?>(
                        value: item,
                        child: Text(
                          item,
                          style: subtitle2,
                        ),
                      ),
                    )
                    .toList(),
                value: selectedHasLicense.value,
                onChanged: (value) => selectedHasLicense.value = value,
                buttonStyleData: ButtonStyleData(
                  height: 40,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kDefaultBorderRadius),
                    border: Border.all(color: Colors.black26),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(height: 40),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.black87,
                  ),
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kDefaultBorderRadius),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            if (selectedHasLicense.value == context.l10n.yes) ...[
              Text(
                context.l10n.group_license_number,
                style: subtitle2,
              ),
              const SizedBox(height: 8),
              OutlinedTextFieldCustomWidget(
                controller: groupLicenseNumberController,
                focusNode: groupLicenseNumberFocusNode,
                hintText: context.l10n.group_license_number,
                validator: FormValidators().emptyValidator,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const SizedBox(height: 15),
            ],
            Text(
              context.l10n.group_institution,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            DropdownButtonHideUnderline(
              child: DropdownButton2<GroupInstitution?>(
                items: GroupInstitution.values
                    .map(
                      (item) => DropdownMenuItem<GroupInstitution?>(
                        value: item,
                        child: Text(
                          item.getName(context),
                          style: subtitle2,
                        ),
                      ),
                    )
                    .toList(),
                value: selectedInstitution.value,
                onChanged: (value) => selectedInstitution.value = value,
                buttonStyleData: ButtonStyleData(
                  height: 40,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kDefaultBorderRadius),
                    border: Border.all(color: Colors.black26),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(height: 40),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.black87,
                  ),
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kDefaultBorderRadius),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            if (selectedInstitution.value == GroupInstitution.none) ...[
              Text(
                context.l10n.group_institution_name,
                style: subtitle2,
              ),
              const SizedBox(height: 8),
              OutlinedTextFieldCustomWidget(
                controller: groupInstitutionController,
                focusNode: groupInstitutionFocusNode,
                hintText: context.l10n.group_institution_name,
                validator: FormValidators().emptyValidator,
              ),
              const SizedBox(height: 15),
            ],
            Text(
              context.l10n.city,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            OutlinedTextFieldCustomWidget(
              controller: groupCityController,
              focusNode: groupCityFocusNode,
              hintText: context.l10n.city,
              validator: FormValidators().emptyValidator,
            ),
            const SizedBox(height: 15),
            Text(
              context.l10n.group_supervisor_fname,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            OutlinedTextFieldCustomWidget(
              controller: groupSupervisorFnameController,
              focusNode: groupSupervisorFnameFocusNode,
              hintText: context.l10n.group_supervisor_fname,
              validator: FormValidators().emptyValidator,
            ),
            const SizedBox(height: 15),
            Text(
              context.l10n.group_supervisor_lname,
              style: subtitle2,
            ),
            const SizedBox(height: 8),
            OutlinedTextFieldCustomWidget(
              controller: groupSupervisorLnameController,
              focusNode: groupSupervisorLnameFocusNode,
              hintText: context.l10n.group_supervisor_lname,
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
      GroupSubmittedWorkParams(
        groupSupervisorNationalCode: nationalCode,
        establishedYear: int.parse(establishedYearController.text),
        groupName: groupNameController.text,
        groupCity: groupCityController.text,
        groupLicenseNumber: selectedHasLicense.value == context.l10n.yes
            ? groupLicenseNumberController.text
            : null,
        groupInstitution: selectedInstitution.value != GroupInstitution.none
            ? selectedInstitution.value!.getName(context)
            : groupInstitutionController.text,
        groupSupervisorFname: groupSupervisorFnameController.text,
        groupSupervisorLname: groupSupervisorLnameController.text,
        verifyCode: verifyCodeController.text,
        attachmentType: selectedAttachmentTypes.value.join(', '),
        description: descriptionController.text,
      ).toJson()
        ..addAll({'file': file}),
    );

    bloc.add(HomeEvent.groupSubmittedWork(formData: formData));
  }
}
