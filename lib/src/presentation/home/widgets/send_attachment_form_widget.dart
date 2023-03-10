import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/elevated_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/filled_dropdown_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_button_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/outlined_text_field_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/enums/attachment_type_enum.dart';

class SendAttachmentFormWidget extends HookWidget {
  SendAttachmentFormWidget({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final jahadiGroupFullnameController = useTextEditingController();
    final jahadiAtlasCodeController = useTextEditingController();
    final groupSupervisorFnameController = useTextEditingController();
    final groupSupervisorLnameController = useTextEditingController();
    final groupSupervisorPhoneController = useTextEditingController();
    final jahadiGroupFullnameFocusNode = useFocusNode();
    final jahadiAtlasCodeFocusNode = useFocusNode();
    final groupSupervisorFnameFocusNode = useFocusNode();
    final groupSupervisorLnameFocusNode = useFocusNode();
    final groupSupervisorPhoneFocusNode = useFocusNode();
    String selectedAttachmentType = '';
    final selectedFile = useState<PlatformFile?>(null);
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
                          controller: jahadiGroupFullnameController,
                          focusNode: jahadiGroupFullnameFocusNode,
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
                          controller: jahadiAtlasCodeController,
                          focusNode: jahadiAtlasCodeFocusNode,
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
                        Text(
                          context.l10n.choose_attachment_type,
                          style: subtitle2,
                        ),
                        const SizedBox(height: 8),
                        FilledDropdownCustomWidget(
                          onValueChange: (value) =>
                              selectedAttachmentType = value ?? '',
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
                          onTap: () => _onTapSelectFile(selectedFile),
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
                        const SizedBox(height: 40),
                        ElevatedButtonCustomWidget(
                          onTap: () => _onTapSend(context),
                          btnText: context.l10n.send,
                          height: 40,
                          width: context.deviceWidthFactor(0.1),
                          color: context.theme.colorScheme.primary,
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

  Future<void> _onTapSelectFile(
    ValueNotifier<PlatformFile?> selectedFilee,
  ) async {
    /// Select a file with accepted formats
    final result = await FilePicker.platform.pickFiles(withData: true);

    if (result != null) {
      final file = result.files.single;
      selectedFilee.value = file;
    } else {
      /// User canceled the picker
      selectedFilee.value = null;
    }
  }

  void _onTapSend(BuildContext context) {}
}
