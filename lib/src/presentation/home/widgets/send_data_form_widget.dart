import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/filled_dropdown_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/attachment_type_enum.dart';

// ignore: must_be_immutable
class SendDataFormWidget extends HookWidget {
  SendDataFormWidget({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey();
  late TextEditingController groupNameController;
  late TextEditingController groupCodeController;
  late TextEditingController groupSupervisorFnameController;
  late TextEditingController groupSupervisorLnameController;
  late TextEditingController groupSupervisorPhoneController;
  late TextEditingController verifyCodeController;
  late FocusNode groupNameFocusNode;
  late FocusNode groupCodeFocusNode;
  late FocusNode groupSupervisorFnameFocusNode;
  late FocusNode groupSupervisorLnameFocusNode;
  late FocusNode groupSupervisorPhoneFocusNode;
  late FocusNode verifyCodeFocusNode;
  late ValueNotifier<String?> selectedAttachmentType;
  late ValueNotifier<PlatformFile?> selectedFile;

  @override
  Widget build(BuildContext context) {
    groupNameController = useTextEditingController();
    groupCodeController = useTextEditingController();
    groupSupervisorFnameController = useTextEditingController();
    groupSupervisorLnameController = useTextEditingController();
    groupSupervisorPhoneController = useTextEditingController();
    verifyCodeController = useTextEditingController();
    groupNameFocusNode = useFocusNode();
    groupCodeFocusNode = useFocusNode();
    groupSupervisorFnameFocusNode = useFocusNode();
    groupSupervisorLnameFocusNode = useFocusNode();
    groupSupervisorPhoneFocusNode = useFocusNode();
    verifyCodeFocusNode = useFocusNode();
    selectedAttachmentType = useState<String?>(null);
    selectedFile = useState<PlatformFile?>(null);
    return ContainerWithTitleCustomWidget(
      title: context.l10n.register_and_send,
      content: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 10),
              Text(
                context.l10n.send_attachment_description,
                style: heading5Bold.copyWith(color: kInfoColor),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          context.l10n.jahadi_group_fullname,
                          style: subtitle2,
                        ),
                        const SizedBox(height: 8),
                        OutlinedTextFieldCustomWidget(
                          controller: groupNameController,
                          focusNode: groupNameFocusNode,
                          hintText: context.l10n.jahadi_group_fullname,
                          validator: FormValidators().emptyValidator,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          context.l10n.jahadi_atlas_code,
                          style: subtitle2,
                        ),
                        const SizedBox(height: 8),
                        OutlinedTextFieldCustomWidget(
                          controller: groupCodeController,
                          focusNode: groupCodeFocusNode,
                          hintText: context.l10n.jahadi_atlas_code,
                          validator: FormValidators().emptyValidator,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          context.l10n.supervisor_fname,
                          style: subtitle2,
                        ),
                        const SizedBox(height: 8),
                        OutlinedTextFieldCustomWidget(
                          controller: groupSupervisorFnameController,
                          focusNode: groupSupervisorFnameFocusNode,
                          hintText: context.l10n.supervisor_fname,
                          validator: FormValidators().emptyValidator,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          context.l10n.supervisor_lname,
                          style: subtitle2,
                        ),
                        const SizedBox(height: 8),
                        OutlinedTextFieldCustomWidget(
                          controller: groupSupervisorLnameController,
                          focusNode: groupSupervisorLnameFocusNode,
                          hintText: context.l10n.supervisor_lname,
                          validator: FormValidators().emptyValidator,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          context.l10n.choose_attachment_type,
                          style: subtitle2,
                        ),
                        const SizedBox(height: 8),
                        FilledDropdownCustomWidget(
                          onValueChange: (value) =>
                              selectedAttachmentType.value = value ?? '',
                          dropdownItems: List.generate(
                            AttachmentType.values.length,
                            (index) =>
                                AttachmentType.values[index].getTitle(context),
                          ),
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
                          height: 35,
                          width: context.deviceWidthFactor(0.07),
                          buttonColor: context.theme.colorScheme.primary,
                        ),
                        const SizedBox(height: 15),
                        if (selectedFile.value != null)
                          Text(
                            '''${context.l10n.chosen_file_name}:\n ${selectedFile.value?.name}''',
                            style: subtitle1Bold,
                          ),
                        Divider(
                          height: 40,
                          color: Colors.grey.shade400,
                          thickness: 1,
                        ),
                        Text(
                          context.l10n.supervisor_phone,
                          style: subtitle2,
                        ),
                        const SizedBox(height: 8),
                        OutlinedTextFieldCustomWidget(
                          controller: groupSupervisorPhoneController,
                          focusNode: groupSupervisorPhoneFocusNode,
                          hintText: context.l10n.supervisor_phone,
                          validator: FormValidators().phoneNumberValidator,
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                        const SizedBox(height: 20),
                        BlocConsumer<HomeBloc, HomeState>(
                          listener: (context, state) {
                            if (state.isActionSuccessful) {
                              AppHelper().displayToast(context, message: 'hi');
                            }
                          },
                          builder: (context, state) =>
                              ElevatedButtonCustomWidget(
                            onTap: () => _onTapSend(context),
                            btnText: context.l10n.get_verify_code,
                            height: 40,
                            isLoading: state.isLoadingAction,
                            width: context.deviceWidthFactor(0.1),
                            color: context.theme.colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          context.l10n.verify_code_description,
                          style: subtitle2,
                        ),
                        const SizedBox(height: 8),
                        OutlinedTextFieldCustomWidget(
                          controller: verifyCodeController,
                          focusNode: verifyCodeFocusNode,
                          hintText: context.l10n.verify_code,
                          validator: FormValidators().emptyValidator,
                          maxLength: 5,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                        const SizedBox(height: 40),
                        BlocConsumer<HomeBloc, HomeState>(
                          listener: (context, state) {
                            if (state.isActionSuccessful) {
                              AppHelper().displayToast(context, message: 'hi');
                            }
                          },
                          builder: (context, state) =>
                              ElevatedButtonCustomWidget(
                            onTap: () => _onTapSend(context),
                            btnText: context.l10n.submit_information,
                            height: 40,
                            isLoading: state.isLoadingAction,
                            width: context.deviceWidthFactor(0.1),
                            color: context.theme.colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: SvgPicture.asset(
                      SvgAssets.formIllustrationAsset,
                      height: 250,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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

  void _onTapSend(
    BuildContext context,
  ) {
    /// If we have validation error then do nothing and return
    if (!formKey.currentState!.validate()) return;

    if (selectedAttachmentType.value == null) {
      AppHelper().displayToast(
        context,
        message: context.l10n.must_choose_attachment_type,
        isFailureMessage: true,
      );
      return;
    }
    if (selectedFile.value == null) {
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

    final formData = FormData.fromMap({
      'group_name': groupNameController.text,
      'group_code': int.parse(groupCodeController.text),
      'supervisor_fname': groupSupervisorFnameController.text,
      'supervisor_lname': groupSupervisorLnameController.text,
      'supervisor_phone': groupSupervisorPhoneController.text,
      'attachment_type': selectedAttachmentType.value,
      'file': file,
    });

    context.read<HomeBloc>().add(HomeEvent.sendData(formData: formData));
  }
}
