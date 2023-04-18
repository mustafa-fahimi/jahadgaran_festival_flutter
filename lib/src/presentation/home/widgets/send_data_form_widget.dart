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

  @override
  Widget build(BuildContext context) {
    return ContainerWithTitleCustomWidget(
      title: context.l10n.register_and_send,
      bgColor: Colors.white,
      content: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: state.sendDataStep == 1
                        ? _FirstStepFormWidget()
                        : _SecondStepFormWidget(formKey: formKey),
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
              );
            },
          ),
        ),
      ),
    );
  }
}

class _FirstStepFormWidget extends HookWidget {
  _FirstStepFormWidget({Key? key}) : super(key: key);

  late TextEditingController groupCodeController;
  late TextEditingController groupSupervisorNationalCodeController;
  late FocusNode groupCodeFocusNode;
  late FocusNode groupSupervisorNationalCodeFocusNode;

  @override
  Widget build(BuildContext context) {
    groupCodeController = useTextEditingController();
    groupSupervisorNationalCodeController = useTextEditingController();
    groupCodeFocusNode = useFocusNode();
    groupSupervisorNationalCodeFocusNode = useFocusNode();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          maxLength: 10,
        ),
        const SizedBox(height: 20),
        ElevatedButtonCustomWidget(
          onTap: () => _onTapCheckInformation(context),
          btnText: context.l10n.check_information,
          height: 40,
          isLoading: context.watch<HomeBloc>().state.isLoadingCheckInformation,
          width: context.deviceWidthFactor(0.1),
          color: context.theme.colorScheme.primary,
        ),
      ],
    );
  }

  void _onTapCheckInformation(BuildContext context) {}
}

class _SecondStepFormWidget extends HookWidget {
  _SecondStepFormWidget({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  late TextEditingController descriptionController;
  late FocusNode descriptionFocusNode;
  late ValueNotifier<List<String>> selectedAttachmentTypes;
  late ValueNotifier<PlatformFile?> selectedFile;

  @override
  Widget build(BuildContext context) {
    descriptionController = useTextEditingController();
    descriptionFocusNode = useFocusNode();
    selectedAttachmentTypes = useState<List<String>>([]);
    selectedFile = useState<PlatformFile?>(null);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 15),
        Text(
          context.l10n.choose_multi_attachment_type_description,
          style: subtitle1Bold.copyWith(color: Colors.pink),
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
          Text(
            context.l10n.submit_successfull,
            style: heading5Bold,
          ),
        const SizedBox(height: 30),
      ],
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
      'attachment_type': selectedAttachmentTypes.value.join(', '),
      'file': file,
    });

    context.read<HomeBloc>().add(HomeEvent.sendData(formData: formData));
  }
}
