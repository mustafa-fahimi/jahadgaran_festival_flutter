// ignore_for_file: must_be_immutable

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:jahadgaran_festival/src/config/config.dart';
import 'package:jahadgaran_festival/src/core/core.dart';
import 'package:jahadgaran_festival/src/features/core/enums/register_type_enum.dart';
import 'package:jahadgaran_festival/src/presentation/core/components/container_with_title_custom_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/bloc/home_bloc.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/register_form_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/submitted_work_forms/individual_submitted_work_form_widget.dart';
import 'package:jahadgaran_festival/src/presentation/home/widgets/submitted_work_forms/jahadi_group_submitted_work_form_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RegisterWidget extends HookWidget {
  RegisterWidget({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey();

  /// Register form variables
  late TextEditingController nationalCodeController;
  late TextEditingController phoneNumberController;
  late FocusNode nationalCodeFocusNode;
  late FocusNode phoneNumberFocusNode;
  late ValueNotifier<RegisterType> selectedRegisterType;

  /// Jahadi group submit work form variables
  late TextEditingController verifyCodeController;
  late TextEditingController descriptionController;
  late FocusNode verifyCodeFocusNode;
  late FocusNode descriptionFocusNode;
  late ValueNotifier<List<String>> selectedAttachmentTypes;
  late ValueNotifier<PlatformFile?> selectedFile;

  /// Individual submit work form variables
  late TextEditingController fnameController;
  late TextEditingController lnameController;
  late TextEditingController cityController;
  late FocusNode fnameFocusNode;
  late FocusNode lnameFocusNode;
  late FocusNode cityFocusNode;

  @override
  Widget build(BuildContext context) {
    nationalCodeController = useTextEditingController();
    phoneNumberController = useTextEditingController();
    nationalCodeFocusNode = useFocusNode();
    phoneNumberFocusNode = useFocusNode();
    selectedRegisterType = useState(RegisterType.jahadiGroup);

    verifyCodeController = useTextEditingController();
    descriptionController = useTextEditingController();
    verifyCodeFocusNode = useFocusNode();
    descriptionFocusNode = useFocusNode();
    selectedAttachmentTypes = useState<List<String>>([]);
    selectedFile = useState<PlatformFile?>(null);

    fnameController = useTextEditingController();
    lnameController = useTextEditingController();
    cityController = useTextEditingController();
    fnameFocusNode = useFocusNode();
    lnameFocusNode = useFocusNode();
    cityFocusNode = useFocusNode();

    final registerFormState = context.watch<HomeBloc>().state.registerFormState;

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
                  if (state.isRegisterSuccessful) {
                    AppHelper().displayToast(
                      context,
                      message: context.l10n.verify_code_sended,
                    );
                  } else if (state.registerFailMessage.isNotEmpty) {
                    AppHelper().displayToast(
                      context,
                      message: state.registerFailMessage,
                      isFailureMessage: true,
                    );
                  }
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
                child: Expanded(
                  flex: 3,
                  child: registerFormState == RegisterType.initial
                      ? RegisterFormWidget(
                          formKey: formKey,
                          nationalCodeController: nationalCodeController,
                          nationalCodeFocusNode: nationalCodeFocusNode,
                          phoneNumberController: phoneNumberController,
                          phoneNumberFocusNode: phoneNumberFocusNode,
                          selectedRegisterType: selectedRegisterType,
                        )
                      : registerFormState == RegisterType.jahadiGroup
                          ? JahadiGroupSubmitWorkFormWidget(
                              formKey: formKey,
                              verifyCodeController: verifyCodeController,
                              descriptionController: descriptionController,
                              verifyCodeFocusNode: verifyCodeFocusNode,
                              descriptionFocusNode: descriptionFocusNode,
                              selectedAttachmentTypes: selectedAttachmentTypes,
                              selectedFile: selectedFile,
                            )
                          : registerFormState == RegisterType.individual
                              ? IndividualSubmitWorkFormWidget(
                                  formKey: formKey,
                                  fnameController: fnameController,
                                  lnameController: lnameController,
                                  cityController: cityController,
                                  verifyCodeController: verifyCodeController,
                                  descriptionController: descriptionController,
                                  fnameFocusNode: fnameFocusNode,
                                  lnameFocusNode: lnameFocusNode,
                                  cityFocusNode: cityFocusNode,
                                  verifyCodeFocusNode: verifyCodeFocusNode,
                                  descriptionFocusNode: descriptionFocusNode,
                                  selectedAttachmentTypes:
                                      selectedAttachmentTypes,
                                  selectedFile: selectedFile,
                                )
                              : RegisterFormWidget(
                                  formKey: formKey,
                                  nationalCodeController:
                                      nationalCodeController,
                                  nationalCodeFocusNode: nationalCodeFocusNode,
                                  phoneNumberController: phoneNumberController,
                                  phoneNumberFocusNode: phoneNumberFocusNode,
                                  selectedRegisterType: selectedRegisterType,
                                ),
                ),
              ),
              if (ResponsiveWrapper.of(context).isLargerThan(TABLET)) ...[
                const SizedBox(width: 15),
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    PngAssets.formIllustrationAsset,
                    height: 250,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
