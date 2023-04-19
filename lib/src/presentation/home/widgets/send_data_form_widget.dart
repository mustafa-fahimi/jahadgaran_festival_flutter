// ignore_for_file: must_be_immutable

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/get_group_data_params.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/dropdown_multi_select_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/attachment_type_enum.dart';

class SendDataFormWidget extends HookWidget {
  SendDataFormWidget({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey();

  /// First form variables
  late TextEditingController groupCodeController;
  late TextEditingController groupSupervisorNationalCodeController;
  late TextEditingController phoneNumberController;
  late FocusNode groupCodeFocusNode;
  late FocusNode groupSupervisorNationalCodeFocusNode;
  late FocusNode phoneNumberFocusNode;

  /// Second form variables
  late TextEditingController verifyCodeController;
  late TextEditingController descriptionController;
  late FocusNode verifyCodeFocusNode;
  late FocusNode descriptionFocusNode;
  late ValueNotifier<List<String>> selectedAttachmentTypes;
  late ValueNotifier<PlatformFile?> selectedFile;

  @override
  Widget build(BuildContext context) {
    groupCodeController = useTextEditingController();
    groupSupervisorNationalCodeController = useTextEditingController();
    phoneNumberController = useTextEditingController();
    groupCodeFocusNode = useFocusNode();
    groupSupervisorNationalCodeFocusNode = useFocusNode();
    phoneNumberFocusNode = useFocusNode();

    verifyCodeController = useTextEditingController();
    descriptionController = useTextEditingController();
    verifyCodeFocusNode = useFocusNode();
    descriptionFocusNode = useFocusNode();
    selectedAttachmentTypes = useState<List<String>>([]);
    selectedFile = useState<PlatformFile?>(null);

    return ContainerWithTitleCustomWidget(
      title: context.l10n.register_and_send,
      bgColor: Colors.white,
      content: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Row(
            children: [
              BlocListener<HomeBloc, HomeState>(
                listener: (context, state) {
                  if (state.isGetGroupDataSuccessful) {
                    AppHelper().displayToast(
                      context,
                      message: context.l10n.verify_code_sended,
                    );
                  } else if (state.getGroupDataFailMessage.isNotEmpty) {
                    AppHelper().displayToast(
                      context,
                      message: state.getGroupDataFailMessage,
                      isFailureMessage: true,
                    );
                  }
                  if (state.isSubmitDataSuccessful) {
                    AppHelper().displayToast(
                      context,
                      message: context.l10n.submit_successfull,
                    );
                  } else if (state.submitDataFailMessage.isNotEmpty) {
                    AppHelper().displayToast(
                      context,
                      message: state.submitDataFailMessage,
                      isFailureMessage: true,
                    );
                  }
                },
                child: Expanded(
                  flex: 3,
                  child: context.watch<HomeBloc>().state.sendDataStep == 1
                      ? _FirstStepFormWidget(
                          formKey: formKey,
                          groupCodeController: groupCodeController,
                          groupCodeFocusNode: groupCodeFocusNode,
                          groupSupervisorNationalCodeController:
                              groupSupervisorNationalCodeController,
                          groupSupervisorNationalCodeFocusNode:
                              groupSupervisorNationalCodeFocusNode,
                          phoneNumberController: phoneNumberController,
                          phoneNumberFocusNode: phoneNumberFocusNode,
                        )
                      : _SecondStepFormWidget(
                          formKey: formKey,
                          verifyCodeController: verifyCodeController,
                          descriptionController: descriptionController,
                          verifyCodeFocusNode: verifyCodeFocusNode,
                          descriptionFocusNode: descriptionFocusNode,
                          selectedAttachmentTypes: selectedAttachmentTypes,
                          selectedFile: selectedFile,
                        ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                flex: 2,
                child: SvgPicture.asset(
                  SvgAssets.formIllustrationAsset,
                  height: 250,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FirstStepFormWidget extends HookWidget {
  const _FirstStepFormWidget({
    Key? key,
    required this.formKey,
    required this.groupCodeController,
    required this.groupSupervisorNationalCodeController,
    required this.phoneNumberController,
    required this.groupCodeFocusNode,
    required this.groupSupervisorNationalCodeFocusNode,
    required this.phoneNumberFocusNode,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController groupCodeController;
  final TextEditingController groupSupervisorNationalCodeController;
  final TextEditingController phoneNumberController;
  final FocusNode groupCodeFocusNode;
  final FocusNode groupSupervisorNationalCodeFocusNode;
  final FocusNode phoneNumberFocusNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.group_registration_code,
          style: subtitle2,
        ),
        const SizedBox(height: 8),
        OutlinedTextFieldCustomWidget(
          controller: groupCodeController,
          focusNode: groupCodeFocusNode,
          hintText: context.l10n.group_registration_code,
          validator: FormValidators().emptyValidator,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
        const SizedBox(height: 20),
        Text(
          context.l10n.supervisor_national_code,
          style: subtitle2,
        ),
        const SizedBox(height: 8),
        OutlinedTextFieldCustomWidget(
          controller: groupSupervisorNationalCodeController,
          focusNode: groupSupervisorNationalCodeFocusNode,
          hintText: context.l10n.supervisor_national_code,
          validator: FormValidators().emptyValidator,
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
          isLoading: context.watch<HomeBloc>().state.isLoadingGetGroupData,
          width: context.deviceWidthFactor(0.1),
          color: context.theme.colorScheme.primary,
        ),
      ],
    );
  }

  void _onTapCheckInformation(BuildContext context) {
    /// If we have validation error then do nothing and return
    if (!formKey.currentState!.validate()) return;

    context.read<HomeBloc>().add(
          HomeEvent.getGroupData(
            getGroupDataParams: GetGroupDataParams(
              groupRegisterationNumber: groupCodeController.text,
              groupSupervisorNationalCode:
                  groupSupervisorNationalCodeController.text,
              phoneNumber: phoneNumberController.text,
            ),
          ),
        );
  }
}

class _SecondStepFormWidget extends HookWidget {
  const _SecondStepFormWidget({
    Key? key,
    required this.formKey,
    required this.verifyCodeController,
    required this.descriptionController,
    required this.verifyCodeFocusNode,
    required this.descriptionFocusNode,
    required this.selectedAttachmentTypes,
    required this.selectedFile,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController verifyCodeController;
  final TextEditingController descriptionController;
  final FocusNode verifyCodeFocusNode;
  final FocusNode descriptionFocusNode;
  final ValueNotifier<List<String>> selectedAttachmentTypes;
  final ValueNotifier<PlatformFile?> selectedFile;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
              '''${context.l10n.group_fullname}: ${state.groupData.groupName}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.group_registration_code}: ${state.groupData.groupRegisterationNumber}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.group_registre_date}: ${state.groupData.groupRegisterDate}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.group_nature}: ${state.groupData.groupNature}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.state}: ${state.groupData.groupState}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.city}: ${state.groupData.groupCity}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.supervisor_fullname}: ${state.groupData.groupSupervisorFullname}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.supervisor_national_code}: ${state.groupData.groupSupervisorNationalCode}''',
              style: subtitle1,
            ),
            const SizedBox(height: 10),
            Text(
              '''${context.l10n.supervisor_phone}: ${state.groupData.groupSupervisorPhone}''',
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
            const SizedBox(height: 25),
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
            const SizedBox(height: 20),
            Text(
              context.l10n.choose_multi_attachment_type_description,
              style: subtitle1Bold.copyWith(color: Colors.pink),
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
              hintText: context.l10n.description_hint,
              minLines: 4,
              maxLines: 4,
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
              width: context.deviceWidthFactor(0.15),
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
                if (state.isSubmitDataSuccessful) {
                  AppHelper().displayToast(
                    context,
                    message: context.l10n.submit_successfull,
                  );
                } else if (state.submitDataFailMessage.isNotEmpty) {
                  AppHelper().displayToast(
                    context,
                    message: state.submitDataFailMessage,
                    isFailureMessage: true,
                  );
                }
              },
              builder: (context, state) => ElevatedButtonCustomWidget(
                onTap: () => _onTapSendData(context),
                btnText: context.l10n.submit_information,
                height: 40,
                isLoading: state.isLoadingSubmitData,
                width: context.deviceWidthFactor(0.1),
                color: context.theme.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 20),
            if (context.watch<HomeBloc>().state.isSubmitDataSuccessful)
              Center(
                child: Text(
                  context.l10n.submit_successfull,
                  style: heading5Bold.copyWith(color: kSuccessColor),
                ),
              ),
            const SizedBox(height: 30),
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
        message: context.l10n.large_file_size_description,
        isFailureMessage: true,
      );
      return;
    } else if (selectedFile.value!.size > 104857600) {
      AppHelper().displayToast(
        context,
        message: context.l10n.must_choose_attachment_file,
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

    final formData = FormData.fromMap({
      'group_registeration_number':
          bloc.state.groupData.groupRegisterationNumber,
      'group_supervisor_national_code':
          bloc.state.groupData.groupSupervisorNationalCode,
      'verify_code': verifyCodeController.text,
      'attachment_type': selectedAttachmentTypes.value.join(', '),
      'file': file,
    });

    bloc.add(HomeEvent.sendSubmittedWork(formData: formData));
  }
}
